theory GeometryProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
section "Geometry Setup"
type_synonym point = "real^2"
definition vec :: "point ⇒ point ⇒ real^2" where
  "vec A B = B - A"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = angle_of_vectors (vec B A) (vec B C)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B = (∃t. P = A + t *⇘ (B - A))"
definition on_circle :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "on_circle P A B C = (dist P A = dist P B ∧ dist P B = dist P C)"
theorem geometry_AED_eq_PEB:
  fixes A B C D P E :: point
  assumes "convex_quadrilateral A B C D"
          "on_line P B D"
          "angle C P B = angle A C D"
          "on_line E A C"
          "on_circle E A B D"
          "E ≠ A" "E ≠ C"
          "A ≠ B" "B ≠ C" "C ≠ D" "D ≠ A" "A ≠ C" "B ≠ D"
  shows "angle A E D = angle P E B"
  sorry