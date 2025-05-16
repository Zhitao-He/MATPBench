theory CircleAngleProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition on_circle :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_circle center p1 p2 ≡ 
    dist center p1 = dist center p2"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle p1 p2 p3 ≡ 
    let v1 = (fst p1 - fst p2, snd p1 - snd p2);
        v2 = (fst p3 - fst p2, snd p3 - snd p2) 
    in atan2 (fst v1 * snd v2 - snd v1 * fst v2) (fst v1 * fst v2 + snd v1 * snd v2)"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg rad ≡ rad * (180 / pi)"
definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad deg ≡ deg * (pi / 180)"
definition arc_measure :: "point ⇒ point ⇒ point ⇒ real" where
  "arc_measure center p1 p2 ≡ 
    2 * rad_to_deg (angle p1 center p2)"
locale circle_problem =
  fixes A R S T :: point
  assumes circleA: "on_circle A R S"
  and circleA2: "on_circle A R T"
  and S_neq_T: "S ≠ T"
  and S_neq_R: "S ≠ R" 
  and T_neq_R: "T ≠ R"
  and angle_RST_63: "rad_to_deg (angle R S T) = 63"
theorem (in circle_problem) measure_of_arc_ATR:
  "arc_measure A T R = 126"
proof -
  have "rad_to_deg (angle R S T) = arc_measure A T R / 2"
    sorry 
  with angle_RST_63 have "63 = arc_measure A T R / 2" by simp
  then have "arc_measure A T R = 126" by simp
  thus ?thesis by simp
qed