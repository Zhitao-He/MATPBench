theory KiteArea
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale kite_quadrilateral =
  fixes A B C D :: "real^2"
  assumes distinct: "A ≠ B" "B ≠ C" "C ≠ D" "D ≠ A" "A ≠ C" "B ≠ D"
  and AD_length: "norm (A - D) = 11"
  and BC_length: "norm (B - C) = 25"
  and kite_property: "norm (C - A) = norm (C - D) ∧ norm (B - A) = norm (B - D)"
definition area_quad :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ real"
  where "area_quad P Q R S = 
          abs (det2 (Q - P) (R - P)) / 2 + abs (det2 (R - P) (S - P)) / 2"
theorem kite_area:
  assumes "kite_quadrilateral A B C D"
  shows "area_quad B A C D = 275 / 2"
  sorry