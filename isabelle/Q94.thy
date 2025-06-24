theory Twelve_Disks_Problem
imports
  Main
  "HOL-Analysis.Transcendental" 
begin
definition N_disks :: nat where
  "N_disks = 12"
definition R_C :: real where
  "R_C = 1.0"
definition alpha_N :: real where
  "alpha_N = pi / real_of_nat N_disks"
definition R_P :: real where
  "R_P = R_C / cos(alpha_N)"
definition r_small_disk :: real where
  "r_small_disk = R_C * tan(alpha_N)"
definition area_one_disk :: real where
  "area_one_disk = pi * (r_small_disk ^ 2)"
definition sum_total_areas :: real where
  "sum_total_areas = (real_of_nat N_disks) * area_one_disk"
definition a :: int where
  "a = 84"
definition b :: int where
  "b = 48"
definition c :: int where
  "c = 3"
end