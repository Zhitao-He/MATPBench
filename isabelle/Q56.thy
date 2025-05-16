theory NonPeriodicFunction
imports Complex_Main
begin
definition f :: "real ⇒ real" where
  "f x = (x^3 + 3*x^2 - 6*x - 8) / 4"
theorem cubic_not_periodic:
  "¬(∃T. T ≠ 0 ∧ (∀x. f(x + T) = f(x)))"
proof
  assume "∃T. T ≠ 0 ∧ (∀x. f(x + T) = f(x))"
  then obtain T where T_prop: "T ≠ 0" and period: "∀x. f(x + T) = f(x)" by auto
  have "∀x. (x + T)^3 + 3*(x + T)^2 - 6*(x + T) - 8 = x^3 + 3*x^2 - 6*x - 8"
    using period unfolding f_def by (simp add: algebra_simps)
  have "∀x. x^3 + 3*x^2*T + 3*x*T^2 + T^3 + 3*x^2 + 6*x*T + 3*T^2 - 6*x - 6*T - 8 = x^3 + 3*x^2 - 6*x - 8"
    using `∀x. (x + T)^3 + 3*(x + T)^2 - 6*(x + T) - 8 = x^3 + 3*x^2 - 6*x - 8` by (simp add: algebra_simps power3_eq_cube)
  hence "∀x. 3*x^2*T + 3*x*T^2 + T^3 + 6*x*T + 3*T^2 - 6*T = 0" by (simp add: algebra_simps)
  hence "∀x. 3*T*x^2 + 3*T^2*x + 6*T*x + T^3 + 3*T^2 - 6*T = 0" by (simp add: algebra_simps)
  hence "∀x. 3*T*x^2 + (3*T^2 + 6*T)*x + (T^3 + 3*T^2 - 6*T) = 0" by (simp add: algebra_simps)
  have "3*T ≠ 0" using T_prop by auto
  have "∀x. x^2 + (T + 2)*x + (T^2/3 + T - 2) = 0" 
    using `∀x. 3*T*x^2 + (3*T^2 + 6*T)*x + (T^3 + 3*T^2 - 6*T) = 0` `3*T ≠ 0`
    by (simp add: field_simps)
  have quadratic_has_at_most_two_roots: 
    "∀a b c. a ≠ 0 ⟹ finite {x. a*x^2 + b*x + c = 0}" 
    by (metis degree_equation_le_2 degree_mult_right linorder_le_less_linear)
  have "finite {x::real. x^2 + (T + 2)*x + (T^2/3 + T - 2) = 0}"
    using quadratic_has_at_most_two_roots by blast
  hence "¬(∀x. x^2 + (T + 2)*x + (T^2/3 + T - 2) = 0)" 
    by (metis finite_UNIV_iff_finite)
  thus "False" using `∀x. x^2 + (T + 2)*x + (T^2/3 + T - 2) = 0` by contradiction
qed