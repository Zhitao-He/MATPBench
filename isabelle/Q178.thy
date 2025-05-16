theory TransversalParallelAngles
imports Main Real
begin
theorem transversal_parallel_angles_find_x:
  fixes x y z :: real
  assumes "0 ≤ x" "0 ≤ y" "0 ≤ z"
  assumes "2 * y + 8 = z"
  assumes "142 + z = 180"
  assumes "4 * x + 6 = 2 * y + 8"
  shows "x = 34"
proof -
  from ‹2 * y + 8 = z› ‹142 + z = 180› have "142 + (2 * y + 8) = 180" by simp
  hence "2 * y = 30" by simp
  hence "y = 15" by simp
  from ‹4 * x + 6 = 2 * y + 8› ‹y = 15› have "4 * x + 6 = 2 * 15 + 8" by simp
  hence "4 * x + 6 = 30 + 8" by simp
  hence "4 * x + 6 = 38" by simp
  hence "4 * x = 32" by simp
  thus "x = 34 / 4 * 4" by simp
  also have "34 / 4 * 4 = 34" by simp
  finally show "x = 34" .
qed