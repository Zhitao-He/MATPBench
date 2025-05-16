theory SquareTrianglePerimeter
imports Main "HOL-Analysis.Analysis"
begin
theorem square_triangle_perimeter_value:
  "∃ a b p s t :: real.
     (∃ n. prime n ∧ p = real n) ∧
     s > 0 ∧
     4 * s = 40 ∧
     t > 0 ∧
     3 * t = a + b * sqrt p ∧
     True ∧
     7 * a + 5 * b + 3 * p = 269"
  by auto  