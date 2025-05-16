theory GeometryProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

(* 定义平面上的点 *)
type_synonym point = "real × real"

(* 定义圆 *)
definition circle :: "point ⇒ real ⇒ point set" where
  "circle center radius = {p. dist p center = radius}"

(* 定义角度 (以度数表示) *)
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A O B = (
    let
      vec1 = (fst A - fst O, snd A - snd O);
      vec2 = (fst B - fst O, snd B - snd O);
      cos_angle = ((fst vec1) * (fst vec2) + (snd vec1) * (snd vec2)) / 
                  (sqrt((fst vec1)^2 + (snd vec1)^2) * sqrt((fst vec2)^2 + (snd vec2)^2))
    in
      arccos cos_angle * (180 / pi)
  )"

(* 定义垂直关系 *)
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D = (
    let
      vec1 = (fst B - fst A, snd B - snd A);
      vec2 = (fst D - fst C, snd D - snd C)
    in
      (fst vec1) * (fst vec2) + (snd vec1) * (snd vec2) = 0
  )"

(* 定义弧的度数 *)
definition measure_of_arc :: "point ⇒ point ⇒ point ⇒ real" where
  "measure_of_arc A O B = (
    if angle A O B ≤ 180 then angle A O B
    else 360 - angle A O B
  )"

(* 问题的形式化陈述 *)
theorem find_measure_of_arc_OAE:
  fixes O F E C B A :: point
  assumes "angle F O E = 45"
  assumes "perpendicular C O A O"  
  assumes "perpendicular E O B O"
  shows "measure_of_arc O A E = 270"

end