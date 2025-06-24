theory Blue_Function_Limit
  imports Complex_Main
begin
definition f :: "real ⇒ real" where
  "f x = exp x"
lemma blue_function_limit_at_neg_infty:
  "((λx. f x) ⤏ 0) at_bot"
  unfolding f_def
  by (rule tendsto_exp_at_bot)
end