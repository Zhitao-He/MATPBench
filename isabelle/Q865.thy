theory FMK_Arc_Measure
imports Complex_Main HOL.Real
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad deg = deg * pi / 180"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg rad = rad * 180 / pi"
definition measure_of_arc :: "point ⇒ point ⇒ point ⇒ real" where
  "measure_of_arc center p1 p2 = rad_to_deg(atan2 (snd p1 - snd center) (fst p1 - fst center) -
                                           atan2 (snd p2 - snd center) (fst p2 - fst center))"
locale FMK_Problem =
  fixes F :: point 
  fixes K :: point
  fixes G :: point
  fixes M :: point
  fixes H :: point
  fixes J :: point
  assumes GK_length: "distance G K = 14"
  assumes MF_length: "distance M F = 8"
  assumes angle_FKG: "deg_to_rad(angle_FKG) = deg_to_rad(142)"
  assumes F_is_center: "distance F K = distance F G" 
  assumes HJ_perp_KJ: "perpendicular H J K J" 
theorem FMK_arc_measure:
  assumes "FMK_Problem F K G M H J"
  shows "measure_of_arc F F M K = 109"
  oops 