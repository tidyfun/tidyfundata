library(dplyr)

# data source: https://www.dropbox.com/scl/fi/vnuldgqnkfa532hzoazjj/chfData.zip
covar <- readr::read_csv(here::here("data-raw", "covariate.csv"), )
activity <- readr::read_csv(here::here("data-raw", "activity.csv"))

chf <- covar |>
  inner_join(activity, by = join_by(id)) |>
  tidyfun::tf_gather(activity.1:activity.1440, key = activity) |>
  mutate(day = ordered(day,
    levels = c(
      "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
    ),
    labels = c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
  ))

usethis::use_data(chf, overwrite = TRUE, compress = "xz")
