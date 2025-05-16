theory RightTriangleTheorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
theorem triangle_right_angle_ACB:
  fixes A B C :: "real^2"
  assumes "inner (B - A) (C - A) = 0"  
      and "norm (B - A) = 4/7"         
      and "norm (B - C) = 5/7"         
    shows "norm (A - C) = 3/7"         
proof -
  have "inner (B - A) (C - A) = 0" by (simp add: assms(1))
  have "norm (A - C)^2 = norm (A - B)^2 + norm (B - C)^2 - 2 * inner (A - B) (B - C)"
    by (simp add: norm_diff_square inner_commute)
  also have "norm (A - B) = norm (B - A)" by simp
  also have "... = 4/7" by (simp add: assms(2))
  have "norm (B - C) = 5/7" by (simp add: assms(3))
  have "inner (A - B) (B - C) = inner ((A - B) + (B - C) - (A - C)) (B - C)"
    by simp
  also have "... = inner (A - C) (B - C)" by simp
  have "norm (A - C)^2 = (4/7)^2 + (5/7)^2 - 2 * inner (A - C) (B - C)"
    by (simp add: ‹norm (A - B) = 4/7› ‹norm (B - C) = 5/7›)
  have "norm (A - C)^2 = (3/7)^2"
    by (simp add: power2_eq_square)
  thus "norm (A - C) = 3/7"
    by (simp add: real_sqrt_unique)
qed