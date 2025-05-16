theory LeftLimitAtOne
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition piecewise_f :: "real \<Rightarrow> real" where
  "piecewise_f x = (if x < 1 then x + 3 else (x - 2)^2)"
theorem left_limit_piecewise_f_at_1:
  "filterlim piecewise_f (at_left 1) (nhds 4)"
  sorry