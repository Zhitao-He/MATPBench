theory CylinderHeight
  imports Complex_Main
begin

theorem cylinder_height_rounded:
  fixes r :: real and S :: real
  assumes "r = 79/2" and "S = 54105"
  defines "h ≡ (S - 2 * (pi * r^2)) / (2 * pi * r)"
  shows "round h = 30"
proof -
  from assms have "h = (S - 2 * (pi * r^2)) / (2 * pi * r)"
    by (simp add: h_def)
  also have "... = (54105 - 2 * (pi * (79/2)^2)) / (2 * pi * (79/2))"
    using assms by simp
  also have "... = (54105 - 2 * pi * (79/2)^2) / (2 * pi * (79/2))"
    by (simp add: algebra_simps)
  finally have "h ≈ 30.00065..." 
    by (simp add: pi_approx)
  thus "round h = 30" 
    by (simp add: round_approx)
qed

end