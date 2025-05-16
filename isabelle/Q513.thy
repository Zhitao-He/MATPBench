theory TriangleHeightProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale triangle_height_problem =
  fixes A B C X :: "real^2"
  assumes AC_length: "norm (A - C) = 14"
  and AB_length: "norm (A - B) = 8"
  and BC_length: "norm (B - C) = 8"
  and X_on_AC: "∃t. 0 ≤ t ∧ t ≤ 1 ∧ X = (1 - t) *⇩R A + t *⇩R C"
  and X_right_angle: "(B - X) ⋅ (C - A) = 0"
context triangle_height_problem
begin
theorem triangle_height_value: "norm (B - X) = sqrt 15"
proof -
  obtain t where t_def: "0 ≤ t ∧ t ≤ 1 ∧ X = (1 - t) *⇩R A + t *⇩R C"
    using X_on_AC by blast
  have X_eq: "X = (1 - t) *⇩R A + t *⇩R C" using t_def by simp
  have "B - X = B - ((1 - t) *⇩R A + t *⇩R C)" using X_eq by simp
  also have "... = (B - (1 - t) *⇩R A) - t *⇩R C" by (simp add: algebra_simps)
  also have "... = B - (1 - t) *⇩R A - t *⇩R C" by simp
  also have "... = B - ((1 - t) *⇩R A + t *⇩R C)" by (simp add: algebra_simps)
  finally have BX_eq: "B - X = B - ((1 - t) *⇩R A + t *⇩R C)" .
  have "C - A = C - A" by simp
  from X_right_angle have "(B - X) ⋅ (C - A) = 0" by simp
  hence "(B - ((1 - t) *⇩R A + t *⇩R C)) ⋅ (C - A) = 0" using BX_eq by simp
  have "B ⋅ (C - A) - ((1 - t) *⇩R A + t *⇩R C) ⋅ (C - A) = 0"
    by (simp add: inner_diff_left)
  hence "B ⋅ (C - A) = ((1 - t) *⇩R A + t *⇩R C) ⋅ (C - A)" by simp
  have "((1 - t) *⇩R A + t *⇩R C) ⋅ (C - A) = (1 - t) *⇩R (A ⋅ (C - A)) + t *⇩R (C ⋅ (C - A))"
    by (simp add: inner_sum_left inner_scaleR_left)
  also have "... = (1 - t) *⇩R (A ⋅ C - A ⋅ A) + t *⇩R (C ⋅ C - C ⋅ A)"
    by (simp add: inner_diff_right)
  also have "... = (1 - t) *⇩R (A ⋅ C - (A ⋅ A)) + t *⇩R ((C ⋅ C) - (C ⋅ A))" by simp
  also have "A ⋅ C = (1/2) *⇩R (norm (A - C)^2 - norm A^2 - norm C^2)"
    by (simp add: inner_commute norm_diff_square)
  also have "A ⋅ A = norm A^2" by simp
  also have "C ⋅ C = norm C^2" by simp
  have BX_norm: "norm (B - X)^2 = norm B^2 + norm X^2 - 2 *⇩R (B ⋅ X)"
    by (simp add: norm_diff_square)
  have "t = 8/14" sorry
  have "norm (B - X)^2 = 15" sorry
  thus "norm (B - X) = sqrt 15"
    by (simp add: real_sqrt_pow2)
qed