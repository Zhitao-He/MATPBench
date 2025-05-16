theory CircleCenterAngles
imports Complex_Main Real_Vector_Spaces HOL.Real 
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p c r = (distance p c = r)"
definition vec :: "point ⇒ point ⇒ point" where
  "vec p1 p2 = (fst p2 - fst p1, snd p2 - snd p1)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product v1 v2 = (fst v1 * fst v2 + snd v1 * snd v2)"
definition cross_product :: "point ⇒ point ⇒ real" where
  "cross_product v1 v2 = (fst v1 * snd v2 - snd v1 * fst v2)"
definition norm :: "point ⇒ real" where
  "norm v = sqrt((fst v)^2 + (snd v)^2)"
definition angle_rad :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_rad A C B = (
    let v1 = vec C A;
        v2 = vec C B
    in
    atan2 (cross_product v1 v2) (dot_product v1 v2)
  )"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg rad = rad * 180 / pi"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg A C B = rad_to_deg (angle_rad A C B)"
theorem circle_center_angle_sum:
  fixes O A B C D :: point
  assumes "A ≠ B" "B ≠ C" "C ≠ D" "D ≠ A" "A ≠ C" "B ≠ D"
  assumes "C = O" 