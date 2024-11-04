dta <- readRDS("data-raw/kinematics.rds")
n <- lengths(dta)
kinematics <- tibble::as_tibble(dta[n == 610])
cycle <- dta$cycle
for (col in names(dta[n == 61610])) {
  kinematics[[col]] <- tf::tfd(dta[[col]], arg = cycle)
}
kinematics$study <- as.factor(kinematics$study)
kinematics$cond <- as.factor(kinematics$cond)
kinematics$side <- as.factor(kinematics$side)
kinematics$sex <- as.factor(kinematics$sex)
kinematics$split_set <- as.factor(kinematics$split_set)

usethis::use_data(kinematics, overwrite = TRUE, compress = "xz")
