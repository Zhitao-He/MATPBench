theory ConeArcLength
imports Complex_Main 
begin
theorem arc_length_quarter_circle:
  fixes r::real
  assumes "r = 4"
  shows "let arc_length = (pi * r) / 2 in arc_length = 2 * pi"
proof -
  have "pi * r / 2 = pi * 4 / 2" using assms by simp
  also have "... = 2 * pi" by simp
  finally show ?thesis by (simp add: Let_def)
qed