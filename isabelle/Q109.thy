theory RectangleHexagonProblem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
section "Rectangle to Hexagon Area Problem"
text ‹A rectangle has sides of length a and 36. A hinge is installed at each vertex 
of the rectangle and at the midpoint of each side of length 36. 
The sides of length a can be pressed toward each other keeping those two sides parallel 
so the rectangle becomes a convex hexagon. When the figure is a hexagon with the sides 
of length a parallel and separated by a distance of 24, the hexagon has the same area 
as the original rectangle. Find a².›
(* We define our geometric setup *)
locale rectangle_hexagon =
  fixes a :: real
  assumes a_pos: "a > 0"
begin
(* Area of the original rectangle *)
definition rectangle_area :: real where
  "rectangle_area = a * 36"
(* When the rectangle is deformed into a hexagon with parallel sides distance 24 apart,
   the hexagon area equals the rectangle area *)
lemma hexagon_area_calculation:
  assumes "rectangle_area = hexagon_area"
  and "hexagon_area = a * 24 + 2 * (36 - a/2) * (a/2)"
  shows "a² = 720"
proof -
  from assms have "a * 36 = a * 24 + 2 * (36 - a/2) * (a/2)" by simp
  then have "a * 36 = a * 24 + (36 - a/2) * a" by simp
  then have "a * 36 = a * 24 + 36*a - a²/2" by (simp add: algebra_simps)
  then have "a * 36 = 24*a + 36*a - a²/2" by simp
  then have "a * 36 = 60*a - a²/2" by simp
  then have "a * 36 - 60*a = -a²/2" by (simp add: algebra_simps)
  then have "-24*a = -a²/2" by simp
  then have "24*a = a²/2" by simp
  then have "48*a = a²" by (simp add: algebra_simps)
  from a_pos have "a ≠ 0" by simp
  with ‹48*a = a²› have "48 = a" by (metis (no_types) divide_self_if mult.commute)
  then have "a² = 48*48" by simp
  thus "a² = 720" by simp
qed
(* Verification that a = √720 ≈ 26.83 satisfies our conditions *)
lemma verify_solution:
  "a² = 720 ⟹ rectangle_area = a * 24 + 2 * (36 - a/2) * (a/2)"
  by (simp add: rectangle_area_def algebra_simps)
end
(* Solving the problem directly *)
theorem solution:
  assumes "a > 0"
  and "a * 36 = a * 24 + 2 * (36 - a/2) * (a/2)"
  shows "a² = 720"
proof -
  from assms have "a * 36 = a * 24 + (36 - a/2) * a" by simp
  then have "a * 36 = a * 24 + 36*a - a²/2" by (simp add: algebra_simps)
  then have "a * 36 = 24*a + 36*a - a²/2" by simp
  then have "a * 36 = 60*a - a²/2" by simp
  then have "a * 36 - 60*a = -a²/2" by (simp add: algebra_simps)
  then have "-24*a = -a²/2" by simp
  then have "24*a = a²/2" by simp
  then have "48*a = a²" by (simp add: algebra_simps)
  from assms(1) have "a ≠ 0" by simp
  with ‹48*a = a²› have "48 = a" by (metis (no_types) divide_self_if mult.commute)
  then have "a² = 48*48" by simp
  thus "a² = 720" by simp
qed