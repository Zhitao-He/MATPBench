theory ParallelogramProblem
imports
  Main
  "HOL-Analysis.Real_Vector_Spaces"
begin
theorem parallelogram_side_lengths_y_value:
  fixes x y :: real
  assumes "DEFG_is_parallelogram: 6*x - 12 = 2*x + 36 ∧ 6*y - 42 = 4*y"
  shows "y = 21"
proof -
  from DEFG_is_parallelogram have "6*y - 42 = 4*y" by simp
  hence "2*y = 42" by simp
  thus "y = 21" by simp
qed