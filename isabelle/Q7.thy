theory DerivativeEquality
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin
theorem derivative_equality:
  fixes f :: "real ⇒ real"
  assumes "∀x. f(x) = 3*x^2 - 8*x + 5"
  shows "(deriv f) 2 = (deriv f) 5"
proof -
  have "∀x. (deriv f) x = 6*x - 8"
    using assms
    by (auto simp: deriv_def has_derivative_def DERIV_imp_deriv)
  then have "(deriv f) 2 = 6*2 - 8" by auto
  moreover have "(deriv f) 5 = 6*5 - 8" using calculation by auto
  ultimately show ?thesis by auto
qed
