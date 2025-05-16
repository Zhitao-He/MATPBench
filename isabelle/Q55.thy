theory ProveXIs3
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem x_is_3:
  fixes x :: real
  defines "AB ≡ 6 * x + 2"
  defines "AC ≡ 9 * x - 2"
  assumes "AB / 8 = AC / 10"
  shows "x = 3"
proof -
  have "(6 * x + 2) / 8 = (9 * x - 2) / 10" using assms(3) unfolding AB_def AC_def by simp
  (* Multiply both sides by 80 to eliminate fractions *)
  hence "10 * (6 * x + 2) = 8 * (9 * x - 2)" by (simp add: field_simps)
  hence "60 * x + 20 = 72 * x - 16" by simp
  hence "60 * x + 20 + 16 = 72 * x" by simp
  hence "60 * x + 36 = 72 * x" by simp
  hence "36 = 72 * x - 60 * x" by simp
  hence "36 = 12 * x" by simp
  hence "x = 36/12" by simp
  hence "x = 3" by simp
qed