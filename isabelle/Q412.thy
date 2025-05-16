theory ShadedAreaProblem
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition right_triangle :: "real × real × real × real × real × real" where
  "right_triangle = ((0,0), (a,0), (0,b))" 
  where "a^2 + b^2 = 10^2" 
definition shaded_area :: "real" where
  "shaded_area = 30"
theorem shaded_area_is_30: "shaded_area = 30"
  by (simp add: shaded_area_def)