theory ParallelogramAngles
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem value_of_y_in_parallelogram:
  fixes x y :: real
  assumes "is_parallelogram ABXC"  
  assumes "angle ABX = 5 * y - 6"  
  assumes "angle BXC = 2 * x + 24" 
  assumes "angle CAB = 3 * x - 17" 
  assumes "angle XCA = y + 58"     
  assumes "0 < angle ABX" "angle ABX < 180"
  assumes "0 < angle BXC" "angle BXC < 180"
  assumes "0 < angle CAB" "angle CAB < 180" 
  assumes "0 < angle XCA" "angle XCA < 180"
  shows "y = 16"
begin
  have "angle CAB = angle BXC" using assms(1) by (rule parallelogram_opposite_angles_equal)
  hence "3 * x - 17 = 2 * x + 24" using assms(3) assms(4) by simp
  hence "x = 41" by simp
  have "angle ABX = angle XCA" using assms(1) by (rule parallelogram_opposite_angles_equal)
  hence "5 * y - 6 = y + 58" using assms(2) assms(5) by simp
  hence "4 * y = 64" by simp
  thus "y = 16" by simp