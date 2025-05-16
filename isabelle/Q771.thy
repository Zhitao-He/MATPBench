theory ParallelogramProblem
imports Complex_Main
begin
theorem parallelogram_AYBC_determine_y:
  fixes x y :: real
  assumes "2 * x - 5 = 3 * x - 18"  
      and "5 * y = 2 * y + 12"      
    shows "y = 4"
proof -
  from assms(1) have "2 * x - 5 = 3 * x - 18" by simp
  hence "- x = -13" by simp
  hence "x = 13" by simp
  from assms(2) have "5 * y = 2 * y + 12" by simp
  hence "3 * y = 12" by simp
  hence "y = 4" by simp
  thus "y = 4" by simp
qed