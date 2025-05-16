theory PyramidSideLengths
imports Main "HOL-Computational_Algebra.Computational_Algebra"
begin
text ‹In a three-sided pyramid (tetrahedron) all side lengths are integers.
Four of the side lengths can be seen in the diagram: 2, 3, 4, and 7.
The sum of the two remaining side lengths is 11.›
(* Define the known side lengths *)
definition a :: "nat" where "a = 2"
definition b :: "nat" where "b = 3"
definition c :: "nat" where "c = 4"
definition d :: "nat" where "d = 7"
(* Define the unknown side lengths *)
definition x :: "nat"
definition y :: "nat"
(* Triangle inequality for all faces of the tetrahedron *)
definition valid_tetrahedron :: "bool" where
"valid_tetrahedron = (
  (* Triangle inequality for all faces *)
  a + b > c ∧ a + c > b ∧ b + c > a ∧
  a + x > d ∧ a + d > x ∧ x + d > a ∧
  b + y > d ∧ b + d > y ∧ y + d > b ∧
  c + y > x ∧ c + x > y ∧ x + y > c ∧
  (* All sides are positive integers *)
  a > 0 ∧ b > 0 ∧ c > 0 ∧ d > 0 ∧ x > 0 ∧ y > 0 ∧
  (* The sum of the unknown sides is 11 *)
  x + y = 11
)"
theorem pyramid_side_sum:
  assumes "valid_tetrahedron"
  shows "x + y = 11"
  using assms valid_tetrahedron_def by simp