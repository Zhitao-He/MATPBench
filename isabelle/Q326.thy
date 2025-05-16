theory CircleArea
imports Complex_Main
begin

(* 定义圆的中心C *)
definition C :: "real × real" where
  "C = (3, 1)"

(* 圆上的一点 *)
definition P :: "real × real" where
  "P = (8, 1)"

(* 计算圆的半径 *)
definition radius :: "real" where
  "radius = sqrt((fst P - fst C)^2 + (snd P - snd C)^2)"

(* 圆的面积 *)
definition circle_area :: "real" where
  "circle_area = π * radius^2"

(* 证明圆的面积为25π *)
lemma "radius = 5"
  unfolding radius_def P_def C_def
  by auto

theorem circle_area_is_25pi: "circle_area = 25 * π"
  unfolding circle_area_def
  using `radius = 5`
  by auto

end