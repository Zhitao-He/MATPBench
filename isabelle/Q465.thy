theory CircleTheorem
imports
  Main
  "HOL-Analysis.Euclidean_Space"
begin
theorem circle_center:
  fixes O :: "real^2"
  assumes "cball O 5 = {P. dist P O ≤ 5}"
  shows "O = center (sphere O 5)"
  by simp
theorem circle_diameter:
  fixes O :: "real^2"
  shows "diameter (sphere O 5) = 10"
  unfolding diameter_def sphere_def
  by simp