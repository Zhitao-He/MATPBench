theory Problem_Arc_Measure
imports Main
begin
typedecl point
consts A :: point B :: point C :: point D :: point F :: point G :: point
type_synonym measure = "real"
definition angle_CBD_degrees :: measure
  where "angle_CBD_degrees = 55" 
definition angle_FBG_degrees :: measure
  where "angle_FBG_degrees = 35" 
definition central_angle_for_minor_arc_FG_degrees :: measure
  where "central_angle_for_minor_arc_FG_degrees = angle_FBG_degrees"
definition minor_arc_measure_from_central_angle :: "measure => measure"
  where "minor_arc_measure_from_central_angle central_angle = central_angle"
definition major_arc_measure_from_central_angle :: "measure => measure"
  where "major_arc_measure_from_central_angle central_angle = 360 - central_angle"
definition measure_of_arc_BFG_degrees :: measure
  where "measure_of_arc_BFG_degrees = major_arc_measure_from_central_angle central_angle_for_minor_arc_FG_degrees"
theorem value_MeasureOfArc_BFG:
  "measure_of_arc_BFG_degrees = 325"
  oops
end