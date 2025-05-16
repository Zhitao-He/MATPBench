theory CylinderVolume
  imports Complex_Main "HOL-Library.Multivariate_Analysis"
begin

(* 定义圆周率 *)
definition pi :: real where "pi = π"

(* 定义圆柱体体积计算公式 *)
definition cylinder_volume :: "real ⇒ real ⇒ real" where
  "cylinder_volume r h = pi * r^2 * h"

(* 设置圆柱体参数 *)
definition r :: real where "r = 6" (* 半径(cm) *)
definition h :: real where "h = 8" (* 高度(cm) *)

(* 计算体积 *)
lemma cylinder_volume_calculation:
  "cylinder_volume r h = 904.78"
  unfolding cylinder_volume_def r_def h_def pi_def
  by (simp add: real_round_le_eq)

end