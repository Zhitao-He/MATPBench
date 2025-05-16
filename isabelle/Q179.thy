theory RectangleProblem
imports Complex_Main
begin
theorem rectangle_DEFG_GFeq34:
  fixes x :: real
  assumes "DEFG is a rectangle"
  assumes "DE = 14 + 2*x"
  assumes "GF = 4*(x - 3) + 6"
  shows "GF = 34"
proof -
  (* In a rectangle, opposite sides are equal *)
  have "DE = GF" using assms(1) by (rule rectangle_opposite_sides_equal)
  (* Substitute the expressions for DE and GF *)
  have "14 + 2*x = 4*(x - 3) + 6" using assms(2-3) `DE = GF` by simp
  (* Simplify the right side *)
  have "14 + 2*x = 4*x - 12 + 6" by simp
  have "14 + 2*x = 4*x - 6" by simp
  (* Solve for x *)
  have "14 + 6 = 4*x - 2*x" by (simp add: algebra_simps)
  have "20 = 2*x" by simp
  have "x = 10" by simp
  (* Now substitute back to find GF *)
  have "GF = 4*(10 - 3) + 6" using assms(3) `x = 10` by simp
  have "GF = 4*7 + 6" by simp
  have "GF = 28 + 6" by simp
  have "GF = 34" by simp
  thus ?thesis .
qed