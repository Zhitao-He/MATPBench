theory Parallelogram_Angle
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p1 p2 = (fst p2 - fst p1, snd p2 - snd p1)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v1 v2 = fst v1 * fst v2 + snd v1 * snd v2"
definition vec_norm :: "real × real ⇒ real" where
  "vec_norm v = sqrt((fst v)^2 + (snd v)^2)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle P1 P P2 = 
    (let v1 = vec P P1; v2 = vec P P2 in
     acos (dot_product v1 v2 / (vec_norm v1 * vec_norm v2)))"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg P1 P P2 = angle P1 P P2 * 180 / pi"
theorem angle_BDC_is_88:
  fixes A B C D F :: point
  assumes "dist B A = 6"
          "dist D A = 9"
          "dist D C = 7"
          "angle_deg B A F = 32"
          "angle_deg C B F = 40"
          "angle_deg F A D = 20"
          "vec A B = vec D C"
          "vec A D = vec B C"
  shows "angle_deg B D C = 88"