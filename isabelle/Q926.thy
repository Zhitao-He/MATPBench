theory TriangleAngle
imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma triangle_angle_C_45_deg:
  fixes A B C :: "real × real"
  assumes "dist A B = 6"
          "dist B C = 6"
          "dist C A = 6 * sqrt 2"
  shows "let x = acos ((6^2 + 6^2 - (6 * sqrt 2)^2) / (2 * 6 * 6)) in 
         x * 180 / pi = 45"
proof -
  let ?a = "dist B C"  
  let ?b = "dist A C"  
  let ?c = "dist A B"  
  have "?a = 6" using assms(2) by simp
  have "?b = 6 * sqrt 2" using assms(3) by simp
  have "?c = 6" using assms(1) by simp
  let ?cos_C = "(?a^2 + ?b^2 - ?c^2) / (2 * ?a * ?b)"
  have "?cos_C = (6^2 + (6 * sqrt 2)^2 - 6^2) / (2 * 6 * (6 * sqrt 2))"
    by (simp add: power2_eq_square)
  also have "... = ((6 * sqrt 2)^2) / (2 * 6 * (6 * sqrt 2))"
    by (simp add: power2_eq_square algebra_simps)
  also have "... = (6^2 * 2) / (2 * 6 * 6 * sqrt 2)"
    by (simp add: power2_eq_square)
  also have "... = (6^2) / (6 * 6 * sqrt 2)"
    by simp
  also have "... = 1 / sqrt 2"
    by simp
  also have "... = sqrt 2 / 2"
    by (simp add: real_sqrt_divide)
  finally have cos_C_val: "?cos_C = sqrt 2 / 2" .
  have "acos (sqrt 2 / 2) = pi/4"
    by (simp add: acos_sqrt2_div_2)
  hence "acos (sqrt 2 / 2) * 180 / pi = 45"
    by (simp add: divide_right_mono)
  thus ?thesis
    using cos_C_val by simp
qed