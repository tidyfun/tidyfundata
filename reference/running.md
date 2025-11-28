# Running data

This dataset includes kinematic data collected from participants running
under various conditions, with or without backpacks of different
weights.

## Usage

``` r
running
```

## Format

A tibble with 610 rows and 49 variables:

- id:

  subject identifier

- cond:

  running condition

- side:

  leg side

- step:

  step number

- age:

  age

- ht:

  height

- wt:

  body mass

- sex:

  sex

- study:

  study

- ankle_accl_ap:

  ankle acceleration anterior-posterior

- ankle_accl_ml:

  ankle acceleration medial-lateral

- ankle_accl_vt:

  ankle acceleration vertical

- ankle_angle_ap:

  ankle angle anterior-posterior

- ankle_angle_ml:

  ankle angle medial-lateral

- ankle_angle_vt:

  ankle angle vertical

- ankle_moment_ap:

  ankle moment anterior-posterior

- ankle_moment_ml:

  ankle moment medial-lateral

- ankle_moment_vt:

  ankle moment vertical

- ankle_vel_ap:

  ankle velocity anterior-posterior

- ankle_vel_ml:

  ankle velocity medial-lateral

- ankle_vel_vt:

  ankle velocity vertical

- com_grf_ap:

  whole body force anterior-posterior

- com_grf_ml:

  whole body force medial-lateral

- com_grf_vt:

  whole body force vertical

- hip_accl_ap:

  hip acceleration anterior-posterior

- hip_accl_ml:

  hip acceleration medial-lateral

- hip_accl_vt:

  hip acceleration vertical

- hip_angle_ap:

  hip angle anterior-posterior

- hip_angle_ml:

  hip angle medial-lateral

- hip_angle_vt:

  hip angle vertical

- hip_moment_ap:

  hip moment anterior-posterior

- hip_moment_ml:

  hip moment medial-lateral

- hip_moment_vt:

  hip moment vertical

- hip_vel_ap:

  hip velocity anterior-posterior

- hip_vel_ml:

  hip velocity medial-lateral

- hip_vel_vt:

  hip velocity vertical

- knee_accl_ap:

  knee acceleration anterior-posterior

- knee_accl_ml:

  knee acceleration medial-lateral

- knee_accl_vt:

  knee acceleration vertical

- knee_angle_ap:

  knee angle anterior-posterior

- knee_angle_ml:

  knee angle medial-lateral

- knee_angle_vt:

  knee angle vertical

- knee_moment_ap:

  knee moment anterior-posterior

- knee_moment_ml:

  knee moment medial-lateral

- knee_moment_vt:

  knee moment vertical

- knee_vel_ap:

  knee velocity anterior-posterior

- knee_vel_ml:

  knee velocity medial-lateral

- knee_vel_vt:

  knee velocity vertical

## Source

<https://github.com/davidruegamer/FDA_tutorial/blob/main/data/data_comb.RDS>

## Details

The conditions are as follows:

- fastbw:

  run at 5 m/s no backpack

- fastten:

  run at 5 m/s with 10% body mass backpack

- fasttwe:

  run at 5 m/s with 20% body mass backpack

- fback:

  run at 3.5 m/s with 20% body mass backpack

- fbw:

  run at 3.5 m/s no backpack

- modbw:

  run at 4 m/s no backpack

- modten:

  run at 4 m/s with 10% body mass backpack

- modtwe:

  run at 4 m/s with 20% body mass backpack

- runt25:

  run at 2.5 m/s no backpack

- runt35:

  run at 3.5 m/s no backpack

- runt45:

  run at 4.5 m/s no backpack

- sback:

  run at self-chosen speed with 20% body mass backpack

- sbw:

  run at self-chosen speed no backpack

- slowbw:

  run at 3 m/s no backpack

- slowten:

  run at 3 m/s with 10% body mass backpack

- slowtw:

  run at 3 m/s with 20% body mass backpack

## References

Liew, X. B, Morris, S., Keogh, W. J, Appleby, B., Netto, K. (2016).
“Effects of two neuromuscular training programs on running biomechanics
with load carriage: a study protocol for a randomised controlled trial.”
*BMC Musculoskeletal Disorders*, **17**(1), 1-10.

Liew, X. B, Morris, S., Netto, K. (2016). “The effects of load carriage
on joint work at different running velocities.” *Journal of
Biomechanics*, **49**(14), 3275-3280.

Fukuchi, K R, Fukuchi, A C, Duarte, Marcos (2017). “A public dataset of
running biomechanics and the effects of running speed on lower extremity
kinematics and kinetics.” *PeerJ*, **5**, e3298.

## Examples

``` r
running
#> # A tibble: 610 × 48
#>    id                    cond   side   step   age    ht    wt sex   study       
#>    <chr>                 <fct>  <fct> <dbl> <dbl> <dbl> <dbl> <fct> <fct>       
#>  1 bernard_study1_subj01 fastbw left   5.5     33  1.90  83.9 m     bernard_stu…
#>  2 bernard_study1_subj02 fastbw left   5.5     30  1.60  53.7 f     bernard_stu…
#>  3 bernard_study1_subj03 fastbw left   5.5     28  1.67  69.0 m     bernard_stu…
#>  4 bernard_study1_subj04 fastbw left   5.56    29  1.62  47.6 f     bernard_stu…
#>  5 bernard_study1_subj05 fastbw left   4.43    35  1.68  60.8 f     bernard_stu…
#>  6 bernard_study1_subj06 fastbw right  4       26  1.83  85.9 m     bernard_stu…
#>  7 bernard_study1_subj07 fastbw left   5.5     25  1.63  55.4 f     bernard_stu…
#>  8 bernard_study1_subj08 fastbw left   5.5     30  1.69  61.1 f     bernard_stu…
#>  9 bernard_study1_subj09 fastbw left   5.56    35  1.78  76.9 m     bernard_stu…
#> 10 bernard_study1_subj10 fastbw right  4.5     34  1.66  65.5 m     bernard_stu…
#> # ℹ 600 more rows
#> # ℹ 39 more variables: ankle_accl_ap <tfd_reg>, ankle_accl_ml <tfd_reg>,
#> #   ankle_accl_vt <tfd_reg>, ankle_angle_ap <tfd_reg>,
#> #   ankle_angle_ml <tfd_reg>, ankle_angle_vt <tfd_reg>,
#> #   ankle_moment_ap <tfd_reg>, ankle_moment_ml <tfd_reg>,
#> #   ankle_moment_vt <tfd_reg>, ankle_vel_ap <tfd_reg>, ankle_vel_ml <tfd_reg>,
#> #   ankle_vel_vt <tfd_reg>, com_grf_ap <tfd_reg>, com_grf_ml <tfd_reg>, …
```
