theory RectangleDistance
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (0, 6)"
definition C :: "real × real" where "C = (10, 6)"
definition D :: "real × real" where "D = (10, 0)"
lemma rectangle_ABCD: "rectangular A B C D"
  unfolding rectangular_def 
  sorry 
definition "diagonal_AC = C - A"
definition X :: "real × real" where
  "X = A + ((B - A) ∙ diagonal_AC) / (diagonal_AC ∙ diagonal_AC) *ₛ diagonal_AC"
definition M :: "real × real" where "M = (A + C) *ₛ (1/2)"
definition "distance_X_to_M = norm (X - M)"
lemma "distance_X_to_M ≈ 1.4"
  sorry