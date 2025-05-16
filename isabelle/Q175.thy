theory PythagoreanTriple
  imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma pythagorean_triple_16_30:
  fixes x :: real
  assumes "sqrt ((16::real)^2 + (30::real)^2) = x"
  shows "x = 34"
proof -
  have "x^2 = ((16::real)^2 + (30::real)^2)" using assms
    by (metis power2_eq_square power_sqrt)
  also have "... = 256 + 900" by simp
  also have "... = 1156" by simp
  also have "sqrt 1156 = 34" by (simp add: real_sqrt_unique)
  finally show "x = 34" by (metis assms)
qed