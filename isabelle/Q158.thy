theory ShadedAreaProblem
imports Main HOL.Real
begin
definition height :: "real" where "height = 9.2"
definition width :: "real" where "width = 10.8"
definition inner_side :: "real" where "inner_side = 3.1"
definition outer_area :: "real" where
  "outer_area = width * height - (width - inner_side) * (height - inner_side)"
definition inner_square_area :: "real" where
  "inner_square_area = inner_side * inner_side"
definition shaded_area :: "real" where
  "shaded_area = outer_area - inner_square_area"
theorem shaded_area_is_about_1085_tenths:
  "abs (shaded_area - 108.5) ≤ 0.05"
  sorry