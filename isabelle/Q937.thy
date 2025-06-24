theory Geometry_Problem
imports Main
begin
typedecl point
consts P :: point
consts A :: point
consts B :: point
consts C :: point
consts Y :: point
axiomatization x :: real
definition angle_BPY :: real where
  "angle_BPY = 3 * x"
definition angle_CPY :: real where
  "angle_CPY = 3 * x - 3"
definition angle_APC :: real where
  "angle_APC = 2 * x + 15"
axiom sum_of_angles_is_180:
  "angle_BPY + angle_CPY + angle_APC = 180"
axiom angles_are_positive:
  "angle_BPY > 0 ∧ angle_CPY > 0 ∧ angle_APC > 0"
definition measure_arc_PCY :: real where
  "measure_arc_PCY = angle_CPY"
theorem value_of_arc_PCY:
  "measure_arc_PCY = 60"
  sorry 
end