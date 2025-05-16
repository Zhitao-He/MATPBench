theory CirclePerimeter
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition circle_B :: "real × real ⇒ bool" where
  "circle_B x ≡ (norm (x - (0, 0)) = 3)"
theorem perimeter_of_circle_B:
  "2 * pi * 3 = 6 * pi"
  by simp