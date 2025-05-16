theory CircleIntersections
  imports
    Complex_Main
    "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = norm (p - q)"
record circle =
  center :: point
  radius :: real
definition on_circle :: "point ⇒ circle ⇒ bool" where
  "on_circle p c ⟷ distance p (center c) = radius c"
definition segment_length :: "point ⇒ point ⇒ real" where
  "segment_length p q = distance p q"
locale circle_intersection_problem =
  fixes P Q R S W X Y :: point
  fixes C1 C2 :: circle
  assumes P_on_C1: "on_circle P C1"
  assumes Q_on_C1: "on_circle Q C1"
  assumes W_on_C1: "on_circle W C1"
  assumes X_on_C1: "on_circle X C1"
  assumes Q_on_C2: "on_circle Q C2"
  assumes R_on_C2: "on_circle R C2"
  assumes X_on_C2: "on_circle X C2"
  assumes Y_on_C2: "on_circle Y C2"
  assumes QR_length: "segment_length Q R = 7"
  assumes RS_length: "segment_length R S = 9"
  assumes XY_length: "segment_length X Y = 18"
  assumes WX_YS_relation: "segment_length W X = 6 * segment_length Y S"
  assumes PS_WS_sum: "segment_length P S + segment_length W S = 150"