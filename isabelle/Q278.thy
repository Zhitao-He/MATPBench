theory AngleValue
  imports Main HOL.Real
begin

(* 定义角度x *)
definition x :: real where
  "x = 50"

(* 定义一个定理，表明x的值为50 *)
theorem x_equals_50: "x = 50"
  unfolding x_def
  by simp

end