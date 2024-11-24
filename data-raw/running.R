dta <- readRDS("data-raw/running.rds")
n <- lengths(dta)
running <- tibble::as_tibble(dta[n == 610])
cycle <- dta$cycle
for (col in names(dta[n == 61610])) {
  running[[col]] <- tf::tfd(dta[[col]], arg = cycle)
}
running$study <- as.factor(running$study)
running$cond <- as.factor(running$cond)
running$side <- as.factor(running$side)
running$sex <- as.factor(running$sex)
running$split_set <- as.factor(running$split_set)

usethis::use_data(running, overwrite = TRUE, compress = "xz")
