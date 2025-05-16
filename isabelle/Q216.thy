theory PhotographerDistance
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

text ‹In remote locations, photographers must keep track of their position from their base.
One morning a photographer sets out from base, represented by point B, to the edge of 
an ice shelf at point S. She then walked to point P.

If the photographer were to walk back to her base from point P, what is the total distance 
she would have travelled? The answer rounded to one decimal place is 21917 metres.›

(* 定义二维欧几里得空间中的点 *)
type_synonym point = "real × real"

(* 定义距离函数 *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"

(* 定义问题中的点 *)
definition B :: point where "B = (0, 0)"  (* 基地点在原点 *)
definition S :: point where "S = (20000, 0)"  (* 假设S在x轴上 *)

(* 根据题意，S到P的距离是916米，角BSP是145度 *)
definition P :: point where
  "P = (fst S + 916 * cos(145 * pi / 180), snd S + 916 * sin(145 * pi / 180))"

(* 计算总行走距离：B到S，再到P，再回到B *)
definition total_distance :: real where
  "total_distance = distance B S + distance S P + distance P B"

(* 验证答案约为21917米 *)
lemma "total_distance ≈ 21917"
  unfolding total_distance_def distance_def B_def S_def P_def
  by (simp add: algebra_simps)

end