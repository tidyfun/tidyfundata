dti <- tibble::tibble(
  id = refund::DTI$ID,
  visit = refund::DTI$visit,
  sex = refund::DTI$sex,
  case = factor(ifelse(refund::DTI$case, "MS", "control")),
  cca = tf::tfd(refund::DTI$cca, arg = seq(0, 1, length.out = 93)),
  rcst = tf::tfd(refund::DTI$rcst, arg = seq(0, 1, length.out = 55))
)

usethis::use_data(dti, overwrite = TRUE, compress = "xz")
