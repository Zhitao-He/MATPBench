theory CylinderSurfaceArea
imports Complex_Main "HOL-Real_Asymp.Real_Asymp"
begin
theorem cylinder_surface_area_example:
  let r = 98 :: real;
      h = 80 :: real;
      sa = 2 * pi * r * h + 2 * pi * r^2
  in sa ≈ 10960.388
  by (simp add: pi_approx Let_def)