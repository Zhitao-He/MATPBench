theory Circles_Tangent_F
  imports Complex_Main "HOL-Analysis.Topology_Euclidean_Space"
begin
locale euclidean_geometry =
  fixes dist :: "real^2 ⇒ real^2 ⇒ real"
  assumes dist_def: "dist p q = norm (p - q)"
context euclidean_geometry
begin
definition on_circle :: "real^2 ⇒ real^2 ⇒ bool" where
  "on_circle C P ⟷ (∃r > 0. dist P C = r)"
definition on_line :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "on_line P A B ⟷ (∃t. P = A + t *⇘ (B - A))"
definition perpendicular :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "perpendicular A B C D ⟷ ((B - A) ∙ (D - C) = 0)"
definition circum_circle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "circum_circle O A B C ⟷ on_circle O A ∧ on_circle O B ∧ on_circle O C"
definition externally_tangent_at :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "externally_tangent_at C1 C2 P ⟷ 
    (∃r1 r2. r1 > 0 ∧ r2 > 0 ∧ 
     dist P C1 = r1 ∧ dist P C2 = r2 ∧ 
     dist C1 C2 = r1 + r2)"
theorem circles_PQ_tangent_at_F:
  fixes A B C O D E F P Q :: "real^2"
  assumes "circum_circle O A B C"
    and "perpendicular D C A C"
    and "∃t. t ≠ 0 ∧ D = A + t *⇘ (B - A)"
    and "F ≠ E"
    and "on_circle O F"
    and "on_line E A C"
    and "on_line F D E"
    and "perpendicular D E A O"
    and "circum_circle P B E F"
    and "circum_circle Q C D F"
  shows "externally_tangent_at P Q F"
  sorry