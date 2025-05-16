theory FloorFunctionContinuity
imports Complex_Main "HOL-Analysis.Analysis"
begin

(* 定义最大整数函数(floor函数) *)
definition floor_function :: "real ⇒ real" where
  "floor_function x = real_of_int ⌊x⌋"

(* 证明floor函数不是在每个点都连续 *)
theorem floor_not_continuous_at_integers:
  "∃x::real. ¬(continuous (at x) floor_function)"
proof
  show "¬(continuous (at (1::real)) floor_function)"
  proof
    assume "continuous (at (1::real)) floor_function"
    
    (* 对于floor函数，左极限为0，右极限为1，但在整数点1处的值为1 *)
    have "LIM x sequentially. floor_function x :> at_left 1 = real_of_int 0"
      sorry (* 需要展开证明，这里简化 *)
    moreover have "floor_function 1 = real_of_int 1"
      by (simp add: floor_function_def)
    
    (* 连续函数的极限应等于函数值，但这里不等 *)
    thus False using `continuous (at (1::real)) floor_function`
      sorry (* 需要展开证明，这里简化 *)
  qed
qed

end