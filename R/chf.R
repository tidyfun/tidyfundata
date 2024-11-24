#' Congestive heart failure accelerometry data
#'
#' @description
#' Activity data from a study of congestive heart failure.
#'
#' @source <https://www.dropbox.com/scl/fi/vnuldgqnkfa532hzoazjj/chfData.zip>
#' @references `r format_bib("huang2019multilevel")`
#' @format A tibble with 13,300 rows and 9 variables:
#' \describe{
#'   \item{id}{Unique identifier for each participant in the study.}
#'   \item{gender}{Participant's gender, recorded as male or female.}
#'   \item{age}{Age of the participant, in years.}
#'   \item{bmi}{Body Mass Index (BMI) of the participant.}
#'   \item{event_week}{The week number relative to a critical event.}
#'   \item{event_type}{Type of event recorded, such as hospitalization.}
#'   \item{week}{Week number during the study, indicating the time frame of data collection.}
#'   \item{day}{Day of the week (e.g., "Monday", "Tuesday") when the activity data was recorded.}
#'   \item{activity}{Activity level recorded by the accelerometer.}
#' }
#' @examples
#' chf
"chf"
