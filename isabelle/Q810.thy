theory GeometryProblem
imports
  Complex_Main 
  "HOL-Analysis.Euclidean_Space" 
begin
type_synonym point = "real_vector 2"
consts A B C D H F :: point
consts x :: real
axiomatization where
  collinear_AHFB_ordered: "between A H F ∧ between H F B" and
  dist_DA_val: "dist D A = 8" and  
  dist_DH_val: "dist D H = x" and  
  dist_HF_val: "dist H F = 6" and  
  angle_DHA_90: "angle D H A = pi / 2" and 
  angle_CFB_90: "angle C F B = pi / 2" and 
  angle_DAH_30: "angle D A H = pi / 6" and 
  angle_CBF_45: "angle C B F = pi / 4" and 
  DC_parallel_AB: "parallel (line D C) (line A B)" and
  distinct_D_C: "D ≠ C" and
  x_is_positive: "x > 0"
theorem value_of_x:
  "x = 4"
end