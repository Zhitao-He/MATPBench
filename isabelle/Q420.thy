theory AngleCXY
imports
  Main
  "HOL-Analysis.Euclidean_Space"
begin

section ‹Equilateral Triangles and Angle Measure›

definition is_equilateral :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "is_equilateral A B C ≡ norm (A - B) = norm (B - C) ∧ norm (B - C) = norm (C - A)"

definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle A B C = arccos (((B - A) •ᵣ (B - C)) / (norm (B - A) * norm (B - C)))"

definition angle_deg :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle_deg A B C = (angle A B C) * (180 / pi)"

theorem angle_CXY:
  assumes "is_equilateral A B C"
    and "is_equilateral P Q R"
  shows "angle_deg C X Y = 40"
  sorry

end