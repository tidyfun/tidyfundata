library(dplyr)
library(stringr)

# source: https://github.com/andrebert/body-weight-exercises
path <- "~/github/body-weight-exercises"
files <- list.files(path, recursive = TRUE)
files <- files[tools::file_ext(files) != "zip"]
seg_files <- str_subset(files, "txt|INFO$", negate = TRUE)
info_files <- str_subset(files, "INFO$")

ratings <- lapply(file.path(path, info_files), function(file) {
  readr::read_delim(file,
    delim = ":", col_names = c("name", "value"), show_col_types = FALSE
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
  filter(ex == "bi") |>
  mutate(id = as.integer(id), rep = as.integer(rep))

bw_files <- str_subset(seg_files, "bi")
bi_files <- file.path(path, bw_files)

bi <- lapply(bi_files, function(file) {
  readr::read_table(file, col_names = FALSE, show_col_types = FALSE) |>
    t() |>
    as_tibble(.name_repair = "minimal") |>
    setNames(c("value", "arg")) |>
    relocate(arg, value) |>
    distinct(arg, .keep_all = TRUE)
}) |>
  tf::tfd()

bi_ratings <- vapply(seq_len(nrow(bodyweight)), function(i) {
  loc <- str_c(bodyweight[i, 1:3], collapse = "/")
  rep <- bodyweight[i, "rep", drop = TRUE]
  if (is.na(ratings[loc])) NA else ratings[[loc]][rep]
}, numeric(1))

bodyweight <- bodyweight |>
  mutate(
    loc = factor(loc,
      levels = c("TL", "TR", "BL", "BR", "CH"),
      labels = c("left arm", "right arm", "left leg", "right leg", "chest")
    ),
    sens = factor(sens,
      levels = c("acc", "rot"), labels = c("acceleration", "rotation")
    ),
    dim = as.factor(dim),
    set = factor(set, levels = c("set1", "set2", "set3"), ordered = TRUE),
    rating = bi_ratings,
    activity = bi
  ) |>
  select(-ex)

usethis::use_data(bodyweight, overwrite = TRUE, compress = "xz")
