theory Angle_Bisector_Problem
  imports
    Main
    "HOL-Analysis.Euclidean_Geometry" 
begin
lemma angle_bisector_theorem_problem:
  fixes A B C D :: "real^2" 
  fixes x :: real            
  assumes AC_length: "dist A C = 18"
  assumes AD_length: "dist A D = 24"
  assumes BC_length: "dist B C = x"
  assumes BD_length: "dist B D = 9"
  assumes angle_equality: "angle B A C = angle D A B"
  assumes B_on_segment_CD: "B ∈ segment C D"
  assumes non_collinear_CAB: "¬ collinear {C, A, B}"
  assumes non_collinear_CAD: "¬ collinear {C, A, D}"
shows "x = 27/4"
oops 
end