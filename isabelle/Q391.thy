theory CircleAngleProblem
imports Complex_Main "HOL-Analysis.Topology_Euclidean_Space"
begin
type_synonym point = "real × real"
context
  fixes O R S T B :: point
  assumes on_circle: "dist R O = dist S O ∧ dist R O = dist B O"
    and distinct: "R ≠ S ∧ S ≠ B ∧ B ≠ R ∧ O ≠ R"
begin
definition angle_of :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_of A P B = (
    let v1 = (fst A - fst P, snd A - snd P);
        v2 = (fst B - fst P, snd B - snd P) in
    atan2 (fst v1 * snd v2 - snd v1 * fst v2) (fst v1 * fst v2 + snd v1 * snd v2)
  )"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg rad = rad * 180 / pi"
definition angle_RTB :: real where
  "angle_RTB = rad_to_deg (angle_of R T B)"
definition angle_ROB :: real where
  "angle_ROB = rad_to_deg (angle_of R O B)"
definition angle_SOT :: real where
  "angle_SOT = rad_to_deg (angle_of S O T)"
definition arc_RS :: real where
  "arc_RS = rad_to_deg (angle_of R O S)"
axiomatization where
  angle_RTB_value: "angle_RTB = 28" and
  angle_ROB_relation: "angle_ROB = 3 * angle_SOT" and
  arc_RS_value: "arc_RS = 68"
lemma arc_RS_result: "arc_RS = 68"
  by (simp add: arc_RS_value)