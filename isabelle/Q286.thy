theory ParallelSegments
  imports Main HOL.Real
begin

(* 定义点和基本几何概念 *)
type_synonym point = "real × real"

(* 计算两点间距离 *)
definition dist :: "point ⇒ point ⇒ real" where
  "dist P Q = sqrt((fst P - fst Q)^2 + (snd P - snd Q)^2)"

(* 定义平行关系 *)
definition parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "parallel A B C D ⟷ (fst B - fst A) * (snd D - snd C) = (snd B - snd A) * (fst D - fst C)"

(* 定义共线关系 *)
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ (fst B - fst A) * (snd C - snd A) = (snd B - snd A) * (fst C - fst A)"

(* 几何定理：给定MN平行于AB，求线段BN的长度 *)
theorem geometry_BN_length:
  fixes A B M N :: point
  assumes "parallel M N A B"
  shows "dist B N = 4"

end