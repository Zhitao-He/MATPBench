theory RotationProof
imports Complex_Main HOL.Real_Vector_Spaces "HOL-Analysis.Euclidean_Space"
begin
definition rotate :: "real ⇒ 'a::real_inner ⇒ 'a ⇒ 'a" where
  "rotate θ C P = C + (Matrix.mat_of_real 
                        [[cos θ, -(sin θ)], 
                         [sin θ, cos θ]]) *v (P - C)"
lemma rotate_180_is_reflection:
  fixes C P :: "'a::real_inner"
  shows "rotate π C P = 2 *v C - P"
proof -
  have "cos π = -1" by simp
  moreover have "sin π = 0" by simp
  ultimately have "rotate π C P = C + (Matrix.mat_of_real 
                                      [[-1, 0], 
                                       [0, -1]]) *v (P - C)"
    by (simp add: rotate_def)
  also have "... = C + (-1) *v (P - C)"
    by (simp add: matrix_vector_mul_neg_one)
  also have "... = C - (P - C)" by simp
  also have "... = 2 *v C - P" by (simp add: algebra_simps)
  finally show ?thesis .
qed
locale rotation_figure =
  fixes darker lighter :: "'a::real_inner set"
  fixes C :: "'a"
  assumes corresponding_points: 
    "∀P∈darker. ∃Q∈lighter. Q = rotate π C P"
  assumes all_rotated: 
    "∀Q∈lighter. ∃P∈darker. Q = rotate π C P"
theorem rotation_angle_is_180:
  fixes darker lighter :: "'a::real_inner set"
  fixes C :: "'a"
  assumes "rotation_figure darker lighter C"
  shows "∀P∈darker. ∀Q∈lighter. Q = rotate π C P ⟷ Q = 2 *v C - P"
  using rotate_180_is_reflection by simp