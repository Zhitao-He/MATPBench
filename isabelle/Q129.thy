theory CircleAngles
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)² + (snd p - snd q)²)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p center r = (dist p center = r)"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - snd p)"
definition parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "parallel p1 p2 q1 q2 = (
    let v1 = vec p1 p2; v2 = vec q1 q2 in
    fst v1 * snd v2 = fst v2 * snd v1)"
definition angle_between :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_between p1 p p2 = (
    let v1 = vec p p1; v2 = vec p p2;
        dot = fst v1 * fst v2 + snd v1 * snd v2;
        norm1 = sqrt((fst v1)² + (snd v1)²);
        norm2 = sqrt((fst v2)² + (snd v2)²)
    in arccos(dot / (norm1 * norm2)))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / pi"
lemma circle_problem:
  fixes O :: point and r :: real 
    and A B C D E :: point
  assumes r_pos: "r > 0"
    and on_circle: "on_circle A O r" "on_circle B O r" "on_circle C O r" "on_circle D O r" "on_circle E O r"
    and EB_diam: "dist E B = 2 * r" 
    and parallel1: "parallel E B D C" 
    and parallel2: "parallel A B E D" 
    and angle_ratio: "angle_between A E B / angle_between A B E = 4/5" 
  shows "rad_to_deg(angle_between B C D) = 130"
  sorry