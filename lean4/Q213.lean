import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
variable (A B C : EuclideanSpace ℝ (Fin 2))
variable (x y : ℝ)
open EuclideanGeometry Real InnerProductSpace
noncomputable def degToRad (deg : ℝ) : ℝ := deg * (π / 180)
axiom hA_ne_B : A ≠ B
axiom hA_ne_C : A ≠ C
axiom hB_ne_C : B ≠ C
axiom h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set (EuclideanSpace ℝ (Fin 2)))
axiom h_dist_AB : dist A B = 3
axiom h_dist_AC : dist A C = 3
axiom h_dist_BC : dist B C = (4 * y - 5)
axiom h_angle_BAC : ∠ B A C = degToRad (2 * x)
axiom h_angle_ABC : ∠ A B C = degToRad (2 * x)
axiom hx_gt_zero : x > 0
axiom hx_lt_90 : x < 90
axiom hy_len_BC_pos : (4 * y - 5) > 0
theorem find_x_value
  (A B C : EuclideanSpace ℝ (Fin 2)) (x y : ℝ)
  (hA_ne_B : A ≠ B) (hA_ne_C : A ≠ C) (hB_ne_C : B ≠ C)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set (EuclideanSpace ℝ (Fin 2))))
  (h_dist_AB : dist A B = 3) (h_dist_AC : dist A C = 3) (h_dist_BC : dist B C = (4 * y - 5))
  (h_angle_BAC : ∠ B A C = degToRad (2 * x)) (h_angle_ABC : ∠ A B C = degToRad (2 * x))
  (hx_gt_zero : x > 0) (hx_lt_90 : x < 90) (hy_len_BC_pos : (4 * y - 5) > 0)
  : x = 30 := by
  have h_angle_ACB_eq_ABC : ∠ A C B = ∠ A B C :=
    angle_eq_angle_of_dist_eq (by rw [h_dist_AC, h_dist_AB] : dist A C = dist A B)
  have h_angle_ACB : ∠ A C B = degToRad (2 * x) := by
    rw [h_angle_ACB_eq_ABC]
    exact h_angle_ABC
  have h_sum_angles_raw : ∠ A B C + ∠ B C A + ∠ C A B = π :=
    angle_add_angle_add_angle_eq_pi hA_ne_B.symm hA_ne_C.symm
  have h_sum_angles : ∠ B A C + ∠ A B C + ∠ A C B = π := by
    apply Eq.trans _ h_sum_angles_raw
    rw [angle_comm B C A]    
    rw [angle_comm C A B]    
    ac_rfl                  
  rw [h_angle_BAC, h_angle_ABC, h_angle_ACB] at h_sum_angles
  rw [show degToRad (2 * x) + degToRad (2 * x) + degToRad (2 * x) = 3 * degToRad (2 * x) by ring] at h_sum_angles
  unfold degToRad at h_sum_angles
  have h_calc : 3 * (2 * x * (π / 180)) = (6 * x * π) / 180 := by ring
  rw [h_calc] at h_sum_angles
  have pi_ne_zero : π ≠ 0 := Real.pi_ne_zero
  have h180_ne_zero : (180 : ℝ) ≠ 0 := by norm_num
  rw [div_eq_iff h180_ne_zero] at h_sum_angles
  rw [mul_comm π (180 : ℝ)] at h_sum_angles 
  have h_6x_eq_180 : 6 * x = 180 :=
    (mul_eq_mul_right_iff.mp h_sum_angles).resolve_right pi_ne_zero
  have h6_ne_zero : (6 : ℝ) ≠ 0 := by norm_num
  rw [mul_comm 6 x] at h_6x_eq_180 
  have h_x_eq_div : x = 180 / 6 := eq_div_of_mul_eq h6_ne_zero h_6x_eq_180
  norm_num at h_x_eq_div 
  exact h_x_eq_div
