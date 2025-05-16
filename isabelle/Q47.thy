theory CongruentTriangles
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

(* 定义二维平面上的点 *)
type_synonym point = "real × real"

(* 定义角度计算函数 *)
definition angle :: "point → point → point → real" where
  "angle A B C = (
    let v1 = (fst A - fst B, snd A - snd B);
        v2 = (fst C - fst B, snd C - snd B);
        dot_product = fst v1 * fst v2 + snd v1 * snd v2;
        len_v1 = sqrt((fst v1)^2 + (snd v1)^2);
        len_v2 = sqrt((fst v2)^2 + (snd v2)^2)
    in
    if len_v1 = 0 ∨ len_v2 = 0 then 0
    else acos(dot_product/(len_v1*len_v2))
  )"

(* 定义三角形全等 *)
definition congruent_triangles :: "point × point × point → point × point × point → bool" where
  "congruent_triangles t1 t2 = (
    let (A, B, C) = t1;
        (D, E, F) = t2
    in
    sqrt((fst A - fst B)^2 + (snd A - snd B)^2) = sqrt((fst D - fst E)^2 + (snd D - snd E)^2) ∧
    sqrt((fst B - fst C)^2 + (snd B - snd C)^2) = sqrt((fst E - fst F)^2 + (snd E - snd F)^2) ∧
    sqrt((fst C - fst A)^2 + (snd C - snd A)^2) = sqrt((fst F - fst D)^2 + (snd F - snd D)^2)
  )"

(* 定义角平分线 *)
definition is_angle_bisector :: "point → point → point → point → bool" where
  "is_angle_bisector A B C D = (angle A B D = angle D B C)"

(* 度数与弧度的转换 *)
definition degrees_to_radians :: "real → real" where
  "degrees_to_radians d = d * pi / 180"

definition radians_to_degrees :: "real → real" where
  "radians_to_degrees r = r * 180 / pi"

(* 题目关键条件 *)
theorem angle_E_is_26_degrees:
  fixes A B C D E F G :: point
  assumes "congruent_triangles (A, B, C) (D, E, F)"
    and "is_angle_bisector B C A D"
    and "angle B A C = degrees_to_radians 22"
    and "angle C G F = degrees_to_radians 88"
  shows "angle D E F = degrees_to_radians 26"

end