theory BlueFunction
  imports Complex_Main "HOL-Analysis.Analysis"
begin

definition blue_function :: "real ⇒ real" where
  "blue_function x = exp x + x^2"

theorem blue_function_limit_neg_infty:
  "LIM x at_bot. blue_function x :> at_right 0"
proof -
  have "LIM x at_bot. exp x :> at_right 0"
    by (simp add: tendsto_exp_at_bot)
  
  have "LIM x at_bot. x^2 :> at_right 0"
  proof -
    have "eventually (λx. x < 0) at_bot"
      by (simp add: eventually_at_bot)
    hence "eventually (λx. x^2 > 0) at_bot"
      by eventually_elim auto
    moreover have "LIM x at_bot. x :> at_bot"
      by simp
    hence "LIM x at_bot. x^2 :> at_right 0"
      by (metis filterlim_sequentially_bot_iff mult_pos_pos power2_eq_square 
          tendsto_mult_filterlim_at_bot_zero)
    ultimately show ?thesis by simp
  qed
  
  from tendsto_add[OF this `LIM x at_bot. exp x :> at_right 0`]
  show ?thesis
    unfolding blue_function_def by simp
qed

end