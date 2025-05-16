theory Parallelogram
imports Main Real
begin
text ‹As shown in the diagram, AB=4*x-17, CD=2*x-1, ∠BCD=4*y-19°, ∠CBA=3*y+3°,
AB and CD are opposite sides of the parallelogram ACDB. Find the value of x.›
theorem parallelogram_x_value:
  fixes x y :: real
  assumes "AB = 4*x - 17" and "CD = 2*x - 1"
          and "angle_BCD = 4*y - 19" and "angle_CBA = 3*y + 3"
          and "is_parallelogram A C D B"
          and "AB > 0" and "CD > 0"
          and "angle_BCD > 0" and "angle_CBA > 0"
  shows "x = 8"
proof -
  (* In a parallelogram, opposite sides are equal *)
  have "AB = CD" using ‹is_parallelogram A C D B› by (simp add: parallelogram_opposite_sides_equal)
  (* Substitute the values of AB and CD *)
  hence "4*x - 17 = 2*x - 1" using assms(1) assms(2) by simp
  (* Solve for x *)
  hence "4*x - 2*x = 17 - 1" by (simp add: algebra_simps)
  hence "2*x = 16" by simp
  hence "x = 8" by simp
  show "x = 8" by (rule ‹x = 8›)
qed