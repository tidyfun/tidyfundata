#' Bicycle Crunch data
#'
#' @description
#' Sensor-based measurements and quality ratings of athletes performing the
#' Bicycle Crunch exercise, recorded across multiple sets and repetitions.
#'
#'
#' @source <https://github.com/andrebert/body-weight-exercises>
#' @references `r format_bib("ebert2018open")`
#' @format A tibble with 20,760 rows and 8 variables:
#' \describe{
#'   \item{id}{ID of the athlete.}
#'   \item{set}{The set number of the exercise.}
#'   \item{loc}{Location of body extremity.}
#'   \item{sens}{Indicator for acceleration (acc) or rotation (rot).}
#'   \item{dim}{Dimension of rotation.}
#'   \item{rep}{The number of repetitions.}
#'   \item{rating}{Quality of their exercise sets within a range of 1 to 5.}
#'   \item{activity}{The bicycle crunch activity.}
#' }
#' @examples
#' bodyweight
"bodyweight"
