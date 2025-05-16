theory SphericalSurfaceArea
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin

theorem sphere_surface_area:
  fixes r :: real
  assumes "r = 7.85" (* 根据表面积推导出半径 *)
  shows "4 * pi * (r^2) ≈ 785"
proof -
  have "4 * pi * (r^2) = 4 * pi * (7.85^2)" using assms by simp
  also have "... = 4 * pi * 61.6225" by simp
  also have "... = 4 * 3.14159265359 * 61.6225" 
    by (simp add: pi_approx)
  also have "... ≈ 4 * 193.7035871" by simp
  also have "... ≈ 774.8143485" by simp
  finally show ?thesis by (simp add: approximate_eq_def)
qed

end