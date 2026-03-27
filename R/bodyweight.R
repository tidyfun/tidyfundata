#' Bodyweight Exercise Data
#'
#' @description
#' Sensor-based measurements and quality ratings of athletes performing different
#' exercises, recorded across multiple sets and repetitions at different locations
#' on their bodies.
#'
#' Argument values for acceleration and rotation are in ms since start of the repetition.
#'
#' The data sets / exercises are:
#'
#'  - `bi`: "Bicycle Crunch" (one rep is left side - right side),
#'  - `cr`: "Crunch",
#'  - `ha`: "Jumping Jack",
#'  - `kn`: "Squat",
#'  - `lu`: "Lunge",
#'  - `mo`: "Mountain Climber"
#'
#' @source <https://github.com/andrebert/body-weight-exercises>
#' @references `r format_bib("ebert2018open")`
#' @format A tibble with 8 variables:
#' \describe{
#'   \item{id}{ID of the athlete.}
#'   \item{ex}{exercise type}
#'   \item{set}{The set number of the exercise.}
#'   \item{loc}{Location of body extremity.}
#'   \item{dim}{Direction of rotation / acceleration}
#'   \item{rep}{The count of the repetition.}
#'   \item{acc}{Acceleration in \eqn{m/s^2}}
#'   \item{rot}{Rotation in \eqn{rad/s}}
#'   \item{rating}{Quality of the exercise (range of 1 (best) to 5)}
#' }
#' @aliases bodyweight bi cr ha kn lu mo
#' @examples
#' tibble::glimpse(bi)
"bodyweight"
