theory CentroidProblem
imports
  Main
  "HOL-Analysis.Euclidean_Space"
begin
context
  fixes A C E P F :: "real^2"
  assumes centroid: "P = (A + C + E) / 3"
  assumes "dist A D = 15"
  assumes "dist P F = 6"
  assumes "F = E" 
begin
lemma triangle_centroid_property:
  assumes "P = (A + C + E) / 3"
  shows "dist P C = 12"
proof -
  from assms have "P - C = (A + C + E) / 3 - C" by simp
  also have "... = (A + E) / 3 - 2 * C / 3" by (simp add: algebra_simps)
  also have "... = (A + E - 2 * C) / 3" by (simp add: algebra_simps)
  ultimately have "P - C = (A + E - 2 * C) / 3" by simp
  thus "dist P C = 12" sorry
qed