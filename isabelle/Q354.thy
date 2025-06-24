theory Geometry_Problem
imports
  Complex_Main 
  "HOL-Analysis.Euclidean_Space" 
  "HOL-Analysis.Angle" 
begin
theorem geometry_statement:
  fixes A B C X :: "real^2" 
  assumes
    non_collinear_ABC: "¬ collinear {A, B, C}"
    and isosceles_ABC: "dist A B = dist A C"
    and angle_ABC_is_30: "angle (A - B) (C - B) = pi / 6"
    and B_C_X_collinear: "collinear {B, C, X}"
    and C_between_B_X: "dist B C + dist C X = dist B X"
    and ac_equals_cx: "dist A C = dist C X"
    and non_collinear_ACX: "¬ collinear {A, C, X}"
  shows "angle (A - X) (C - X) = pi / 12"
  sorry 
end