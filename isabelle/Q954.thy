theory Triangle_Circle_Angle_Equality
imports
  Main
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec A B = (fst B - fst A, snd B - snd A)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ (∃ t. vec A B = t *⇩R vec A C ∨ vec A C = t *⇩R vec A B)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B ⟷ (∃ t. vec A P = t *⇩R vec A B)"
definition parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "parallel A B C D ⟷ (∃ t. t ≠ 0 ∧ vec A B = t *⇩R vec C D)"
definition intersect :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "intersect P A B C D ⟷ on_line P A B ∧ on_line P C D"
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle C P ⟷ (∃ r > 0. (fst P - fst C)² + (snd P - snd C)² = r²)"
definition circle_through :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "circle_through O A B C ⟷ on_circle O A ∧ on_circle O B ∧ on_circle O C"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = undefined" 
theorem triangle_circle_angle_equality:
  fixes A B C D E F G O P :: point
  assumes 
    "¬ collinear A B C"
    "on_line D A B"
    "on_line E A C"
    "parallel D E B C"
    "intersect F B E C D"
    "circle_through O B D F"
    "circle_through P C E F"
    "on_circle O G"
    "on_circle P G"
    "G ≠ F" "G ≠ B" "G ≠ D" "G ≠ C" "G ≠ E"
  shows "angle B A F = angle C A G"
sorry