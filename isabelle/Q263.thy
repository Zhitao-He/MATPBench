theory AnglePNM
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin

(* 定义欧几里得平面中的点 *)
type_synonym point = "real × real"

(* 计算两点之间的距离 *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst q - fst p)^2 + (snd q - snd p)^2)"

(* 计算两个向量之间的角度（弧度） *)
definition angle_between_vectors :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_between_vectors P N M = 
    (let v1 = (fst P - fst N, snd P - snd N);
         v2 = (fst M - fst N, snd M - snd N);
         dot_product = fst v1 * fst v2 + snd v1 * snd v2;
         len_v1 = sqrt((fst v1)^2 + (snd v1)^2);
         len_v2 = sqrt((fst v2)^2 + (snd v2)^2)
     in arccos(dot_product / (len_v1 * len_v2)))"

(* 弧度转换为度数 *)
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / pi"

(* 定义具体的点坐标 *)
definition P :: point where "P = (0, 0)"
definition N :: point where "N = (4, 0)"
definition M :: point where "M = (8, 12)"

(* 计算角PNM并转换为度数 *)
value "rad_to_deg (angle_between_vectors P N M)"

(* 计算结果应约等于69.30度 *)
lemma "rad_to_deg (angle_between_vectors P N M) ≈ 69.30"
  sorry

end