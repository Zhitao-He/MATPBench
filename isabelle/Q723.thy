theory CircleMinusTriangle
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition pi :: real where "pi = π"
definition circle_area :: "real ⇒ real" where
  "circle_area r = pi * r^2"
definition triangle_area_equilateral :: "real ⇒ real" where
  "triangle_area_equilateral s = (sqrt 3 / 4) * s^2"
theorem area_circle_minus_triangle:
  assumes "AB = 2"              
  and "triangle_DBC_equilateral" 
  and "A_is_center_of_circle"    
  shows "circle_area AB - triangle_area_equilateral (2 * sqrt 3) = -3 * sqrt 3 + 4 * pi"
proof -
  have circle_area_val: "circle_area 2 = 4 * pi"
    by (simp add: circle_area_def)
  have "triangle_area_equilateral (2 * sqrt 3) = 3 * sqrt 3"
    by (simp add: triangle_area_equilateral_def)
  thus ?thesis
    by (simp add: circle_area_val)
qed