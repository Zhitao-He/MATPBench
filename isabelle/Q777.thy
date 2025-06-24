theory GeometryProblem
imports Main
begin
typedecl point
definition angle :: "point => point => point => real" where
  "angle A B C = (SOME r. True)" 
consts C G H D F E :: point
consts x :: real
definition MeasureOfArc :: "point => point => point => real" where
  "MeasureOfArc P Q R = angle Q P R" 
axiomatization where
  angle_GCD_is_straight: "angle G C D = 180" and
  angle_addition_GCH_HCD: "angle G C H + angle H C D = angle G C D" and
  angle_GCH_def: "angle G C H = 2 * x" and
  angle_HCD_def: "angle H C D = (6 * x + 28)" and
  angle_FCG_is_right: "angle F C G = 90" and
  angle_FCD_is_right: "angle F C D = 90" and
  vertical_angles_DCE_GCH: "angle D C E = angle G C H" and
  angle_addition_FCE_DCE: "angle F C E + angle D C E = angle F C D" and
  x_gt_zero: "x > 0"
theorem measure_of_arc_CFE:
  "MeasureOfArc C F E = 52"
oops 
end