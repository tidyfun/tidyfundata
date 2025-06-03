library(dplyr)
library(stringr)

library(parallel)
use_cores <- detectCores() - 2

# source: https://github.com/andrebert/body-weight-exercises
path <- "~/github/body-weight-exercises"
files <- list.files(path, recursive = TRUE)
files <- files[tools::file_ext(files) != "zip"]
seg_files <- str_subset(files, "txt|INFO$", negate = TRUE)
info_files <- str_subset(files, "INFO$")

ratings <- lapply(file.path(path, info_files), function(file) {
  readr::read_delim(
    file,
    delim = ":",
    col_names = c("name", "value"),
    show_col_types = FALSE
  ) |>
    filter(name == "Rating") |>
    pull(value) |>
    str_split("-", simplify = TRUE) |>
    as.numeric()
})
names(ratings) <- str_remove(info_files, "/INFO")

bodyweight <- seg_files |>
  str_split("/|-", simplify = TRUE) |>
  as_tibble(.name_repair = "minimal") |>
  setNames(c("id", "ex", "set", "loc", "sens", "dim", "rep")) |>
  # rm participants w/o segmented exercises and exercises that were not segmented
  filter(!(id %in% c(5, 9, 19)) & !(ex %in% c("", "li", "ru"))) |>
  mutate(id = as.integer(id), rep = as.integer(rep), ex = factor(ex))

get_tfd <- function(files, label) {
  f <- mclapply(
    files,
    function(file) {
      readr::read_table(file, col_names = FALSE, show_col_types = FALSE) |>
        t() |>
        as_tibble(.name_repair = "minimal") |>
        setNames(c("value", "arg")) |>
        relocate(arg, value) |>
        distinct(arg, .keep_all = TRUE)
    },
    mc.cores = use_cores
  ) |>
    tf::tfd()
  files |>
    str_remove(paste0(path, "/")) |>
    str_split("/|-", simplify = TRUE) |>
    as_tibble(.name_repair = "minimal") |>
    setNames(c("id", "ex", "set", "loc", "sens", "dim", "rep")) |>
    mutate("{{label}}" := f, rep = as.numeric(rep)) |>
    select(-sens)
}

get_ratings <- function(ex) {
  ex_ratings <- ratings[str_detect(names(ratings), ex)]
  str_split(names(ex_ratings), "/", simplify = TRUE) |>
    as_tibble(.name_repair = "minimal") |>
    setNames(c("id", "ex", "set")) |>
    mutate(rating = ex_ratings) |>
    unnest(cols = c(rating)) |>
    group_by(id, ex, set) |>
    mutate(rep = 1:n())
}

for (this_ex in levels(bodyweight$ex)) {
  ex_filenames <- str_subset(seg_files, this_ex)
  ex_files <- file.path(path, ex_filenames)
  ex_acc_files <- str_subset(ex_files, "/acc-")
  ex_rot_files <- str_subset(ex_files, "/rot-")
  acc <- get_tfd(ex_acc_files, acc)
  rot <- get_tfd(ex_rot_files, rot)
  rating <- get_ratings(this_ex)
  ex <- full_join(acc, rot) |>
    right_join(rating) |>
    mutate(
      id = factor(id),
      ex = factor(
        ex,
        levels = c("bi", "cr", "ha", "kn", "lu", "mo"),
        labels = c(
          "Bicycle Crunch",
          "Crunch",
          "Jumping Jack",
          "Squat",
          "Lunge",
          "Mountain Climber"
        )
      ),
      loc = factor(
        loc,
        levels = c("TL", "TR", "BL", "BR", "CH"),
        labels = c("left arm", "right arm", "left leg", "right leg", "chest")
      ),
      dim = as.factor(dim),
      set = factor(set, levels = c("set1", "set2", "set3"), ordered = TRUE)
    )
  assign(this_ex, ex)
  cat(this_ex, "done\n")
}

usethis::use_data(bi, overwrite = TRUE, compress = "xz")
usethis::use_data(cr, overwrite = TRUE, compress = "xz")
usethis::use_data(ha, overwrite = TRUE, compress = "xz")
usethis::use_data(kn, overwrite = TRUE, compress = "xz")
usethis::use_data(lu, overwrite = TRUE, compress = "xz")
usethis::use_data(mo, overwrite = TRUE, compress = "xz")
