theory Quadrilateral_Angle
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = (let
      vecAB = (fst B - fst A, snd B - snd A);
      vecBC = (fst C - fst B, snd C - snd B)
    in
      arccos ((fst vecAB * fst vecBC + snd vecAB * snd vecBC) /
             (sqrt ((fst vecAB)^2 + (snd vecAB)^2) * sqrt ((fst vecBC)^2 + (snd vecBC)^2))))"
definition is_convex_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_convex_quadrilateral A B C D = True"  
definition pi :: real where "pi = pi"
locale quadrilateral_problem =
  fixes A B C D :: point
  fixes x :: real
  assumes quad_convex: "is_convex_quadrilateral A B C D"
  assumes angle_A: "angle D A B = 3 * x"
  assumes angle_D: "angle C D A = x"
  assumes angle_B: "angle A B C = pi / 2"
theorem (in quadrilateral_problem) quadrilateral_angle_C_90:
  "angle B C D = pi / 2"
  sorry