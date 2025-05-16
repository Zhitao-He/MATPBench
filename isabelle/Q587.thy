theory TriangleTheorem
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem triangle_side_length_60_30:
  fixes A B C :: "real × real"
  assumes "dist A C = 5"
  assumes "angle B A C = pi/6"  
  assumes "angle A B C = pi/3"  
  shows "dist B C = 5 * sqrt 3 / 3"
proof -
  have "dist B C / sin(angle B A C) = dist A C / sin(angle A B C)"
    using sine_law[of A B C] assms(2) assms(3)
    by (simp add: sine_law)
  hence "dist B C / sin(pi/6) = 5 / sin(pi/3)"
    using assms(1) assms(2) assms(3) by auto
  hence "dist B C / (1/2) = 5 / (sqrt 3 / 2)"
    by auto
  hence "dist B C = 5 * (1/2) / (sqrt 3 / 2)"
    by (simp add: field_simps)
  hence "dist B C = 5 * (1/2) * (2/sqrt 3)"
    by (simp add: field_simps)
  hence "dist B C = 5 * (1/sqrt 3)"
    by (simp add: field_simps)
  hence "dist B C = 5 * sqrt 3 / 3"
    by (simp add: real_sqrt_divide field_simps)
  thus ?thesis by simp
qed