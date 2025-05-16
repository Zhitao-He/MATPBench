theory FindX
  imports Main HOL.Real
begin

(* 定义x的值，根据题目描述x = 143 *)
definition x :: real where "x = 143"

(* 定义四舍五入到最接近的十分位的函数 *)
definition round_to_nearest_tenth :: "real ⇒ real" where
  "round_to_nearest_tenth x = real_of_int (floor (x * 10 + 0.5)) / 10"

(* 证明x四舍五入到最接近的十分位后等于143 *)
lemma x_rounded: "round_to_nearest_tenth x = 143"
  unfolding round_to_nearest_tenth_def x_def
  by auto

end