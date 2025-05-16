theory Triangle
imports Complex_Main
begin
lemma triangle_cosine_rule_value:
  fixes A B C :: "real × real"
  assumes "dist A B = x"
      and "dist A C = 11"
      and "dist B C = 9"
      and "angle C A B = 28 * pi / 180"
  shows "x = sqrt(202 - 198 * cos(7 * pi / 45))"
proof -
  have "x² = 11² + 9² - 2 * 11 * 9 * cos(28 * pi / 180)" using assms
    by (simp add: cosine_rule)
  (* 28° = 7·π/45 *)
  also have "28 * pi / 180 = 7 * pi / 45"
    by simp
  also have "11² + 9² = 202"
    by simp
  also have "2 * 11 * 9 = 198" 
    by simp
  also have "x² = 202 - 198 * cos(7 * pi / 45)"
    by (simp add: calculation)
  also have "x = sqrt(202 - 198 * cos(7 * pi / 45))"
    by (simp add: real_sqrt_unique calculation)
  finally show ?thesis .
qed