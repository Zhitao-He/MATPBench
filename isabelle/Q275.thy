theory SphereCylinderRadius
imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma sphere_cylinder_radius:
  fixes r_sphere r_cyl h_cyl Vol_cyl :: real
  assumes "h_cyl = 5"
  assumes "Vol_cyl = 1375 * pi"
  assumes "r_cyl^2 * pi * h_cyl = Vol_cyl"
  assumes "r_sphere^2 = r_cyl^2 + (h_cyl / 2)^2"
  shows "r_sphere = 3"
proof -
  from ‹Vol_cyl = 1375 * pi› ‹r_cyl^2 * pi * h_cyl = Vol_cyl› ‹h_cyl = 5›
  have "r_cyl^2 * pi * 5 = 1375 * pi" by simp
  hence "r_cyl^2 = 1375 / 5" by (simp add: field_simps)
  hence "r_cyl^2 = 275" by simp
  from ‹r_sphere^2 = r_cyl^2 + (h_cyl / 2)^2› ‹r_cyl^2 = 275› ‹h_cyl = 5›
  have "r_sphere^2 = 275 + (5 / 2)^2" by simp
  hence "r_sphere^2 = 275 + 25/4" by simp
  hence "r_sphere^2 = (1100 + 25) / 4" by simp
  hence "r_sphere^2 = 1125 / 4" by simp
  hence "r_sphere^2 = 9" by simp
  thus "r_sphere = 3" by simp
qed