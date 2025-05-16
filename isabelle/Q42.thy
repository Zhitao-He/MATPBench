theory NotDifferentiableFunction
  imports Complex_Main "HOL-Analysis.Analysis"
begin

text ‹We will prove that the absolute value function is not differentiable at 0.›

theorem abs_not_differentiable_at_zero:
  "¬ (λx::real. |x|) differentiable (at 0)"
proof
  assume "differentiable (at 0) (λx::real. |x|)"
  hence "DERIV (λx::real. |x|) 0 :> (DERIV (λx::real. |x|) 0)" 
    by (simp add: differentiable_def)
  
  have deriv_left: "(λx::real. |x|) has_real_derivative -1 at 0 within {x. x < 0}"
  proof -
    have "∀x < 0. |x| = -x" by auto
    hence "∀x < 0. (λx. |x|) x = (λx. -x) x" by auto
    thus ?thesis
      by (auto intro: derivative_eq_intros)
  qed
  
  have deriv_right: "(λx::real. |x|) has_real_derivative 1 at 0 within {x. x > 0}"
  proof -
    have "∀x > 0. |x| = x" by auto
    hence "∀x > 0. (λx. |x|) x = (λx. x) x" by auto
    thus ?thesis
      by (auto intro: derivative_eq_intros)
  qed
  
  have "∃d. (DERIV (λx::real. |x|) 0 :> d) ∧ (d = 1 ∨ d = -1)"
    using has_real_derivative_at_within[OF deriv_left] 
    has_real_derivative_at_within[OF deriv_right]
    by (metis has_field_derivative_at)
  
  have "(DERIV (λx::real. |x|) 0 :> 1) ∧ (DERIV (λx::real. |x|) 0 :> -1)"
    using deriv_left deriv_right
    by (metis DERIV_unique differentiable_def has_field_derivative_at)
  
  hence "1 = -1" using DERIV_unique by blast
  
  thus False by auto
qed

end