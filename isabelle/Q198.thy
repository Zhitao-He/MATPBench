theory AngleBisectorTheorem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

definition colinear :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "colinear A B C ⟷ (∃t. C - A = t *⇩R (B - A)) ∨ A = B ∨ A = C ∨ B = C"

definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle A B C = of_real (arccos (((A - B) ∙ (C - B)) / (norm (A - B) * norm (C - B))))"

definition is_angle_bisector :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "is_angle_bisector A B C D ⟷ angle A B D = angle D B C"

locale angle_bisector_theorem =
  fixes A B C D E :: "real^2"
  assumes triangle_ABC: "¬ colinear A B C"
  assumes D_on_AC: "colinear A D C ∧ D ≠ A ∧ D ≠ C"
  assumes E_on_BC: "colinear B E C ∧ E ≠ B ∧ E ≠ C"
  assumes BD_bisects_ABC: "is_angle_bisector A B C B D"

theorem angle_CDE_is_45_degrees:
  assumes "angle_bisector_theorem A B C D E"
  shows "angle C D E = pi/4"
  sorry

end