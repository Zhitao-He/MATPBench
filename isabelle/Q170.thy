theory ParallelLines
imports Main "HOL-Analysis.Real_Vector_Spaces"
begin
theorem find_x_for_parallel_lines:
  "∃x::real. 3 * x - 14 = 2 * x + 25"
proof -
  have "3 * x - 14 = 2 * x + 25 ⟷ 3 * x - 2 * x = 25 + 14" for x::real
    by (simp add: algebra_simps)
  hence "3 * x - 14 = 2 * x + 25 ⟷ x = 39" for x::real
    by (simp add: algebra_simps)
  hence "3 * 39 - 14 = 2 * 39 + 25"
    by (simp add: algebra_simps)
  thus "∃x::real. 3 * x - 14 = 2 * x + 25"
    by (rule exI[where x=39], simp)
qed