theory Geometry_Problem
  imports Main Real "HOL-Analysis.Euclidean_Space"
begin
locale euclidean_geometry =
  fixes A B C D E :: "real^2"
  assumes AB: "dist A B = 3"
  and AC: "dist A C = 5"
  and CD: "dist C D = 7/2"
  and DE: "dist D E = 3"
  and parallel_EB_DC: "∃k. k ≠ 0 ∧ (E - B) = k *R (D - C)"
context euclidean_geometry
begin
lemma colinear_def:
  "colinear {P, Q, R} ⟷ (∃t. (P ≠ Q ∧ R = P + t *R (Q - P)) ∨ (P ≠ R ∧ Q = P + t *R (R - P)))"
  by (simp add: colinear_def)
lemma similar_triangles_angle_angle:
  assumes "colinear {A, B, E}"
  and "colinear {A, C, D}"
  and "∃k. k ≠ 0 ∧ (E - B) = k *R (D - C)"
  shows "∃s. s ≠ 0 ∧ (E - A) = s *R (D - A) ∧ (B - A) = s *R (C - A)"
  sorry
theorem BE_length:
  "dist B E = 21/10"
proof -
  have "∃s. s ≠ 0 ∧ (E - A) = s *R (D - A) ∧ (B - A) = s *R (C - A)"
    sorry
  then obtain s where s_def: "s ≠ 0 ∧ (E - A) = s *R (D - A) ∧ (B - A) = s *R (C - A)"
    by blast
  have "dist B E / dist A B = dist D C / dist A C"
    sorry
  hence "dist B E = dist A B * dist D C / dist A C"
    by (simp add: field_simps)
  thus "dist B E = 21/10"
    by (simp add: AB AC CD)
qed