import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry Real InnerProductSpace
theorem find_QR_minus_RD_is_0
  (A B C D P Q R S T : EuclideanSpace ℝ (Fin 2))
  (h_angle_DAB : EuclideanGeometry.angle D A B = Real.pi / 2)
  (h_angle_ABC : EuclideanGeometry.angle A B C = Real.pi / 2)
  (h_angle_BCD : EuclideanGeometry.angle B C D = Real.pi / 2)
  (h_angle_CDA : EuclideanGeometry.angle C D A = Real.pi / 2)
  (h_AB_length : dist A B = 16)
  (h_dist_AB_eq_DC : dist A B = dist D C)
  (h_dist_AD_eq_BC : dist A D = dist B C)
  (h_AD_gt_0 : 0 < dist A D)
  (h_P_on_BC_seg : P ∈ segment ℝ B C)
  (h_angle_APD_90 : EuclideanGeometry.angle A P D = Real.pi / 2)
  (h_T_on_BC_seg : T ∈ segment ℝ B C)
  (h_S_on_AD_seg : S ∈ segment ℝ A D)
  (h_TS_perp_BC_vector : inner ℝ (S -ᵥ T) (C -ᵥ B) = 0)
  (h_BP_eq_PT : dist B P = dist P T)
  (h_B_P_T_ordered : Wbtw ℝ B P T)
  (h_Q_on_PD_seg : Q ∈ segment ℝ P D)
  (h_Q_on_TS_seg : Q ∈ segment ℝ T S)
  (h_R_on_CD_seg : R ∈ segment ℝ C D)
  (h_AQR_collinear : Collinear ℝ ({A, Q, R} : Set (EuclideanSpace ℝ (Fin 2))))
  (h_PA_len : dist A P = 20)
  (h_AQ_len : dist A Q = 25)
  (h_QP_len : dist Q P = 15)
  : dist Q R - dist R D = 0 := by
  sorry
