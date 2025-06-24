import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real EuclideanGeometry Angle
noncomputable def deg_to_rad (d : ℝ) : ℝ := d * (π / 180)
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem find_x_value_from_congruent_triangles
    (R S T V : P)
    (x_val y_val : ℝ)
    (h_R_ne_S : R ≠ S) (h_S_ne_V : S ≠ V) (h_V_ne_R : V ≠ R)
    (h_T_ne_V : T ≠ V) (h_S_ne_T : S ≠ T) 
    (h_RSV_not_collinear : ¬ Collinear ℝ ({R, S, V} : Set P))
    (h_TVS_not_collinear : ¬ Collinear ℝ ({T, V, S} : Set P)) 
    (h_RS_length : dist R S = 2 * y_val - 1) 
    (h_ST_length : dist S T = 24.5)         
    (h_TV_length : dist T V = 24)           
    (h_angle_RSV : angle R S V = deg_to_rad 90) 
    (h_angle_RVS : angle R V S = deg_to_rad 78) 
    (h_angle_STV : angle S T V = deg_to_rad x_val) 
    (h_congr_side_RS_eq_TV : dist R S = dist T V)
    (h_congr_side_SV_eq_VS : dist S V = dist V S) 
    (h_congr_side_VR_eq_ST : dist V R = dist S T)
    (h_congr_angle_RSV_eq_TVS : angle R S V = angle T V S) 
    (h_congr_angle_SVR_eq_VST : angle S V R = angle V S T) 
    (h_congr_angle_VRS_eq_STV : angle V R S = angle S T V) 
    (h_x_val_positive : x_val > 0)
    (h_x_val_sensible_angle : x_val < 180) 
    (h_y_val_makes_length_positive : 2 * y_val - 1 > 0) 
    : x_val = 12 := by
  have h_sum_angles_RSV : angle R S V + angle R V S + angle V R S = π := by
    rw [angle_comm R V S] 
    apply angle_add_angle_add_angle_eq_pi h_R_ne_S.symm h_V_ne_R
  rw [h_angle_RSV, h_angle_RVS] at h_sum_angles_RSV
  let π_eq_deg_to_rad : π = deg_to_rad 180 := by
    unfold deg_to_rad
    field_simp [Real.pi_ne_zero]
  rw [π_eq_deg_to_rad] at h_sum_angles_RSV
  unfold deg_to_rad at h_sum_angles_RSV
  rw [show (90 * (π / 180)) + (78 * (π / 180)) = (90 + 78) * (π / 180) by { rw [← add_mul] }] at h_sum_angles_RSV
  rw [← eq_sub_iff_add_eq'] at h_sum_angles_RSV
  rw [← sub_mul] at h_sum_angles_RSV
  norm_num at h_sum_angles_RSV 
  have h_VRS_eq_STV : angle V R S = angle S T V := h_congr_angle_VRS_eq_STV
  rw [← h_VRS_eq_STV, h_sum_angles_RSV] at h_angle_STV
  have h_12_rad_form : 12 * (π / 180) = deg_to_rad 12 := by unfold deg_to_rad; rfl
  rw [h_12_rad_form] at h_angle_STV
  rw [eq_comm] at h_angle_STV
  have h_deg_to_rad_inj : Function.Injective deg_to_rad :=
    fun a1 a2 h_eq =>
      let pi_div_180_ne_zero : π / 180 ≠ 0 := by norm_num [Real.pi_ne_zero]
      have : a1 * (π / 180) = a2 * (π / 180) := by
        unfold deg_to_rad at h_eq
        exact h_eq
      (mul_left_inj' pi_div_180_ne_zero).mp this
  exact h_deg_to_rad_inj h_angle_STV
