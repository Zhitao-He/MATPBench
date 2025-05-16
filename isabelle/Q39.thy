theory Geometry_Problem
  imports Main Complex_Main "HOL-Analysis.Analysis"
begin

(* 定义欧几里得平面上的点 *)
type_synonym point = "real × real"

(* 计算两点之间的距离 *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"

(* 判断点是否在圆上 *)
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p center r = (distance p center = r)"

(* 两个向量的点积 *)
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product p1 p2 = (fst p1 * fst p2 + snd p1 * snd p2)"

(* 向量 *)
definition vector :: "point ⇒ point ⇒ point" where
  "vector p1 p2 = (fst p2 - fst p1, snd p2 - snd p1)"

(* 计算角度（弧度） *)
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle p1 p2 p3 = 
    (let v1 = vector p2 p1;
         v2 = vector p2 p3;
         cos_theta = dot_product v1 v2 / (distance p2 p1 * distance p2 p3)
     in arccos cos_theta)"

(* 角度转换为度数 *)
definition degrees :: "real ⇒ real" where
  "degrees rad = rad * 180 / pi"

(* 判断两条线是否相切 *)
definition is_tangent :: "point ⇒ point ⇒ point ⇒ real ⇒ bool" where
  "is_tangent p1 p2 center r = 
    (let d = distance center (closest_point center p1 p2) in d = r)"

(* 计算点到线的最近点 *)
definition closest_point :: "point ⇒ point ⇒ point ⇒ point" where
  "closest_point p a b =
    (let v = vector a b;
         u = ((fst p - fst a) * fst v + (snd p - snd a) * snd v) /
             (fst v^2 + snd v^2)
     in (fst a + u * fst v, snd a + u * snd v))"

(* 确定线段延长线与另一条线的交点 *)
definition intersection :: "point ⇒ point ⇒ point ⇒ point ⇒ point" where
  "intersection a b c d =
    (let a1 = snd b - snd a;
         b1 = fst a - fst b;
         c1 = a1 * fst a + b1 * snd a;
         a2 = snd d - snd c;
         b2 = fst c - fst d;
         c2 = a2 * fst c + b2 * snd c;
         det = a1 * b2 - a2 * b1
     in (if det ≠ 0 then
          ((b2 * c1 - b1 * c2) / det, (a1 * c2 - a2 * c1) / det)
        else
          (0, 0)))"

(* 定理：如果AB是⊙O的直径，点C位于⊙O上，AE是⊙O的切线，A是切点，
   连接BC并延长与AE相交于点D。如果∠AOC = 80°，则∠ADB = 50° *)
theorem "
  fixes O A B C D E :: point
  fixes r :: real
  assumes circ: \"r > 0\"
    and diam: \"distance A B = 2 * r ∧ distance O A = r ∧ distance O B = r\"
    and center: \"O = ((fst A + fst B) / 2, (snd A + snd B) / 2)\"
    and on_circ: \"on_circle C O r\"
    and tangent: \"is_tangent A E O r\"
    and tangent_pt: \"distance A O = r\"
    and intersect: \"D = intersection B C A E\"
    and angle_AOC: \"degrees (angle A O C) = 80\"
  shows \"degrees (angle A D B) = 50\"
"
(* 无需证明 *)
sorry

end