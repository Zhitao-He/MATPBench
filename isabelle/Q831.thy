theory ValueOfH
imports Complex_Main Real_Vector_Spaces "HOL-Analysis.Euclidean_Space"
begin
lemma value_of_h_in_triangle:
  fixes A B C :: "real^2"
  assumes "A ≠ B" and "B ≠ C" and "C ≠ A"
    and "norm (C - A) = 3"  
  have "cos(arccos (((B - A) • (C - A)) / (?h * ?CA))) = ((B - A) • (C - A)) / (?h * ?CA)"
    by simp
  have "cos(π/4) = 1/sqrt 2" 
    by (simp add: cos_pi_div_4)
  have "((B - A) • (C - A)) / (?h * ?CA) = 1/sqrt 2"
    using assms(5) by simp
  have "((B - A) • (C - A)) = ?h * ?CA * (1/sqrt 2)"
    using assms(1,2,3,5) by (simp add: field_simps)
  have "?h^2 = ((B - A) • (B - A))"
    by simp
  have "?h^2 = ?CA^2 * 2"
    using assms 
    by (metis cos_pi_div_4 mult_eq_0_iff norm_ge_zero real_sqrt_pow2)
  have "?h^2 = 3^2 * 2"
    using assms(4) by simp
  have "?h^2 = 18"
    by simp
  hence "?h = sqrt 18"
    using assms(1,2,3) by (simp add: real_sqrt_pow2)
  have "sqrt 18 = 3 * sqrt 2"
    by (simp add: real_sqrt_mult)
  thus "?h = 3 * sqrt 2"
    by simp
qed