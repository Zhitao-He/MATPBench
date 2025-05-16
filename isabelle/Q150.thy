theory CircleDiagram
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

locale circle_with_right_angle =
  fixes A B C D :: "real^2" 
  assumes points_distinct: "A ≠ B ∧ B ≠ C ∧ C ≠ A ∧ D ≠ A ∧ D ≠ B ∧ D ≠ C"
  and D_is_center: "norm (A - D) = norm (B - D) ∧ norm (B - D) = norm (C - D)"

theorem (in circle_with_right_angle) angle_ABC_right:
  "angle (A - B) (C - B) = pi/2"
  sorry

end