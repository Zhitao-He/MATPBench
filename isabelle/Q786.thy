theory FindValueOfX
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem value_x_is_2_sqrt_78:
  fixes A B C :: "real × real"
  fixes x :: real
  assumes "A = (0, 0)"
  assumes "B = (0, 7)" 
  assumes "C = (x, 0)"
  assumes "dist A B = 7"
  assumes "dist B C = 19"
  assumes "dist A C = x"
  assumes "((fst B - fst A) * (fst C - fst A) + (snd B - snd A) * (snd C - snd A)) = 0" (* BA⊥CA *)
  shows "x = 2 * sqrt 78"
proof -
  have "dist A B^2 = (fst B - fst A)^2 + (snd B - snd A)^2" by (simp add: dist_real_def)
  also have "... = (0 - 0)^2 + (7 - 0)^2" using assms(1) assms(2) by auto
  also have "... = 49" by simp
  finally have "dist A B^2 = 49" .
  have "dist A C^2 = (fst C - fst A)^2 + (snd C - snd A)^2" by (simp add: dist_real_def)
  also have "... = (x - 0)^2 + (0 - 0)^2" using assms(1) assms(3) by auto
  also have "... = x^2" by simp
  finally have "dist A C^2 = x^2" .
  have "dist B C^2 = (fst C - fst B)^2 + (snd C - snd B)^2" by (simp add: dist_real_def)
  also have "... = (x - 0)^2 + (0 - 7)^2" using assms(2) assms(3) by auto
  also have "... = x^2 + 49" by simp
  finally have "dist B C^2 = x^2 + 49" .
  from assms(5) have "dist B C = 19" .
  hence "dist B C^2 = 19^2" by (simp add: power2_eq_square)
  hence "x^2 + 49 = 361" using `dist B C^2 = x^2 + 49` by simp
  hence "x^2 = 312" by simp
  have "312 = 4 * 78" by simp
  hence "x^2 = 4 * 78" using `x^2 = 312` by simp
  hence "x = 2 * sqrt 78" 
    by (metis (no_types, hide_lams) power2_eq_square real_sqrt_mult real_sqrt_power2 zero_less_mult_iff zero_less_numeral)
  thus "x = 2 * sqrt 78" by simp
qed