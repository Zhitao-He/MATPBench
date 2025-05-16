theory TangentCircles
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem rectangle_two_tangent_circles_shaded_area:
  fixes π :: real
  assumes "π = pi"
  let ?rect_area = "4 * 2" 
  let ?circle_area = "π * 1^2" 
  let ?shaded_area = "?rect_area - 2 * ?circle_area" 
  shows "?shaded_area = 8 - 2 * π"
proof -
  have "?rect_area = 8" by simp
  have "?circle_area = π" by simp
  have "?shaded_area = ?rect_area - 2 * ?circle_area" by simp
  hence "?shaded_area = 8 - 2 * π" by (simp add: `?rect_area = 8` `?circle_area = π`)
  thus "?shaded_area = 8 - 2 * π" by simp
qed