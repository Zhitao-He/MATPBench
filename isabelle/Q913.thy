theory SineLawTriangle
imports
  Complex_Main 
  "HOL-Analysis.Analysis"
begin
section ‹The Sine Law in Triangle›
definition radian_of_degree :: "real ⇒ real" where
  "radian_of_degree deg = (deg * pi) / 180"
theorem triangle_sine_law_value_x:
  fixes A B C :: "real × real"
  assumes "A ≠ B" and "B ≠ C" and "C ≠ A"
  assumes "dist A B = 9"
  assumes "∠ACB = radian_of_degree 58"
  assumes "∠CBA = radian_of_degree 35"
  assumes "∠ACB + ∠CBA < pi"
  shows "dist A C = 9 * sin(∠CBA) / sin(∠ACB)"
begin
  have "dist A C / sin(∠CBA) = dist A B / sin(∠ACB)" 
    using sine_law[of A B C] assms by simp
  then have "dist A C = dist A B * sin(∠CBA) / sin(∠ACB)"
    by (simp add: field_simps)
  then show ?thesis using assms(4)
    by simp
end
corollary x_value:
  shows "9 * sin(radian_of_degree 35) / sin(radian_of_degree 58) = 
         9 * sin(7 * pi / 36) / sin(29 * pi / 90)"
proof -
  have "radian_of_degree 35 = 35 * pi / 180" by (simp add: radian_of_degree_def)
  also have "... = 7 * pi / 36" by simp
  finally have deg35: "radian_of_degree 35 = 7 * pi / 36" .
  have "radian_of_degree 58 = 58 * pi / 180" by (simp add: radian_of_degree_def)
  also have "... = 29 * pi / 90" by simp
  finally have deg58: "radian_of_degree 58 = 29 * pi / 90" .
  show ?thesis using deg35 deg58 by simp
qed