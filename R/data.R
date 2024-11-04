#' @importFrom tibble tibble
NULL

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

#' Running data
#'
#' @description
#' This dataset includes kinematic data collected from participants running
#' under various conditions, with or without backpacks of different weights.
#'
#' @details
#' The conditions are as follows:
#'
#' \describe{
#'   \item{fastbw}{run at 5 m/s no backpack}
#'   \item{fastten}{run at 5 m/s with 10% body mass backpack}
#'   \item{fasttwe}{run at 5 m/s with 20% body mass backpack}
#'   \item{fback}{run at 3.5 m/s with 20% body mass backpack}
#'   \item{fbw}{run at 3.5 m/s no backpack}
#'   \item{modbw}{run at 4 m/s no backpack}
#'   \item{modten}{run at 4 m/s with 10% body mass backpack}
#'   \item{modtwe}{run at 4 m/s with 20% body mass backpack}
#'   \item{runt25}{run at 2.5 m/s no backpack}
#'   \item{runt35}{run at 3.5 m/s no backpack}
#'   \item{runt45}{run at 4.5 m/s no backpack}
#'   \item{sback}{run at self-chosen speed with 20% body mass backpack}
#'   \item{sbw}{run at self-chosen speed no backpack}
#'   \item{slowbw}{run at 3 m/s no backpack}
#'   \item{slowten}{run at 3 m/s with 10% body mass backpack}
#'   \item{slowtw}{run at 3 m/s with 20% body mass backpack}
#' }
#'
#' @source <https://github.com/davidruegamer/FDA_tutorial/blob/main/data/data_comb.RDS>
#' @format A tibble with 610 rows and 49 variables:
#' \describe{
#'   \item{id}{subject identifier}
#'   \item{cond}{running condition}
#'   \item{side}{leg side}
#'   \item{step}{step number}
#'   \item{age}{age}
#'   \item{ht}{height}
#'   \item{wt}{body mass}
#'   \item{sex}{sex}
#'   \item{study}{study}
#'   \item{split_set}{validation set}
#'   \item{ankle_accl_ap}{ankle acceleration anterior-posterior}
#'   \item{ankle_accl_ml}{ankle acceleration medial-lateral}
#'   \item{ankle_accl_vt}{ankle acceleration vertical}
#'   \item{ankle_angle_ap}{ankle angle anterior-posterior}
#'   \item{ankle_angle_ml}{ankle angle medial-lateral}
#'   \item{ankle_angle_vt}{ankle angle vertical}
#'   \item{ankle_moment_ap}{ankle moment anterior-posterior}
#'   \item{ankle_moment_ml}{ankle moment medial-lateral}
#'   \item{ankle_moment_vt}{ankle moment vertical}
#'   \item{ankle_vel_ap}{ankle velocity anterior-posterior}
#'   \item{ankle_vel_ml}{ankle velocity medial-lateral}
#'   \item{ankle_vel_vt}{ankle velocity vertical}
#'   \item{com_grf_ap}{whole body force anterior-posterior}
#'   \item{com_grf_ml}{whole body force medial-lateral}
#'   \item{com_grf_vt}{whole body force vertical}
#'   \item{hip_accl_ap}{hip acceleration anterior-posterior}
#'   \item{hip_accl_ml}{hip acceleration medial-lateral}
#'   \item{hip_accl_vt}{hip acceleration vertical}
#'   \item{hip_angle_ap}{hip angle anterior-posterior}
#'   \item{hip_angle_ml}{hip angle medial-lateral}
#'   \item{hip_angle_vt}{hip angle vertical}
#'   \item{hip_moment_ap}{hip moment anterior-posterior}
#'   \item{hip_moment_ml}{hip moment medial-lateral}
#'   \item{hip_moment_vt}{hip moment vertical}
#'   \item{hip_vel_ap}{hip velocity anterior-posterior}
#'   \item{hip_vel_ml}{hip velocity medial-lateral}
#'   \item{hip_vel_vt}{hip velocity vertical}
#'   \item{knee_accl_ap}{knee acceleration anterior-posterior}
#'   \item{knee_accl_ml}{knee acceleration medial-lateral}
#'   \item{knee_accl_vt}{knee acceleration vertical}
#'   \item{knee_angle_ap}{knee angle anterior-posterior}
#'   \item{knee_angle_ml}{knee angle medial-lateral}
#'   \item{knee_angle_vt}{knee angle vertical}
#'   \item{knee_moment_ap}{knee moment anterior-posterior}
#'   \item{knee_moment_ml}{knee moment medial-lateral}
#'   \item{knee_moment_vt}{knee moment vertical}
#'   \item{knee_vel_ap}{knee velocity anterior-posterior}
#'   \item{knee_vel_ml}{knee velocity medial-lateral}
#'   \item{knee_vel_vt}{knee velocity vertical}
#' }
#' @examples
#' running
"running"
