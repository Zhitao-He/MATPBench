theory PythagoreanTree
imports Main HOL.Real
begin
theorem pythagorean_tree_square_area:
  fixes a b c :: real
  assumes "a > 0" and "b > 0" and "c > 0"
  assumes "a^2 = 5"
  assumes "b^2 = 3"
  shows "c^2 = 8"
proof -
  have "c^2 = a^2 + b^2" using assms(1-3) by (simp add: real_pow_2 algebra_simps)
  also have "... = 5 + 3" using assms(4-5) by simp
  also have "... = 8" by simp
  finally show "c^2 = 8" by simp
qed
