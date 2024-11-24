#' Diffusion tensor imaging data
#'
#' @description
#' Fractional anisotropy (FA) tract profiles for the corpus
#' callosum (cca) and the right corticospinal tract (rcst). Accompanying
#' the tract profiles are the subject ID numbers, visit number, total
#' number of scans, multiple sclerosis case status and Paced Auditory Serial
#' Addition Test (pasat) score.
#'
#' Data are also include in the `refund` package in another format.
#'
#' @details
#' If you use this data as an example in written work, please
#' include the following acknowledgment: “The MRI/DTI data were collected
#' at Johns Hopkins University and the Kennedy-Krieger Institute"
#'
#' @format A tibble with 382 rows and 6 variables:
#' \describe{
#'   \item{id}{Subject ID}
#'   \item{visit}{The visit number}
#'   \item{sex}{The sex of the subject}
#'   \item{case}{The multiple sclerosis case status}
#'   \item{cca}{The fractional anisotropy (FA) tract profile for the corpus callosum}
#'   \item{rcst}{The fractional anisotropy (FA) tract profile for the right corticospinal tract}
#' }
#' @examples
#' dti
"dti"
