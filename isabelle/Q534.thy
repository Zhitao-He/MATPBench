theory TriangleTheorem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition triangle_side_length_value :: "complex ⇒ complex ⇒ complex ⇒ real ⇒ bool" where
  "triangle_side_length_value A B C a ≡
    A ≠ B ∧ B ≠ C ∧ C ≠ A ∧
    cmod (B - C) = a ∧
    cmod (A - C) = 10 ∧
    cmod (A - B) = 8 ∧
    vector_angle (B - A) (C - A) = pi / 3"
theorem triangle_side_value:
  assumes "triangle_side_length_value A B C a"
  shows "a = 2 * sqrt 21"
proof -
  from assms have A_neq_B: "A ≠ B" and B_neq_C: "B ≠ C" and C_neq_A: "C ≠ A"
    and BC_length: "cmod (B - C) = a" and AC_length: "cmod (A - C) = 10" 
    and AB_length: "cmod (A - B) = 8" and BAC_angle: "vector_angle (B - A) (C - A) = pi / 3"
    unfolding triangle_side_length_value_def by auto
  have "cmod (B - C)^2 = cmod (B - A)^2 + cmod (C - A)^2 - 2 * cmod (B - A) * cmod (C - A) * cos (vector_angle (B - A) (C - A))"
    by (simp add: law_of_cosines)
  also have "... = 8^2 + 10^2 - 2 * 8 * 10 * cos (pi / 3)"
    using AB_length AC_length BAC_angle by simp
  also have "... = 64 + 100 - 2 * 8 * 10 * 1/2"
    by simp
  also have "... = 164 - 80"
    by simp
  also have "... = 84"
    by simp
  finally have "cmod (B - C)^2 = 84" .
  with BC_length have "a^2 = 84"
    by (simp add: power2_eq_square)
  thus "a = 2 * sqrt 21"
    by (simp add: real_sqrt_mult power2_eq_square)
qed