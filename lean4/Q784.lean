import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem prove_value_of_y
  (J K L Q R S : P)
  (x y : ℝ)
  (h_KJ : dist K J = 6)
  (h_KL : dist K L = 12)
  (h_RQ : dist R Q = 4)
  (h_RS : dist R S = 8)
  (h_angle_JLK_val : EuclideanGeometry.angle J L K = degToRad 30)
  (h_angle_RQS_val : EuclideanGeometry.angle R Q S = degToRad 80)
  (h_angle_JLK_eq_QSR : EuclideanGeometry.angle J L K = EuclideanGeometry.angle Q S R)
  (h_angle_KJL_eq_RQS : EuclideanGeometry.angle K J L = EuclideanGeometry.angle R Q S)
  (h_angle_LKJ_eq_SRQ : EuclideanGeometry.angle L K J = EuclideanGeometry.angle S R Q)
  (h_angle_LKJ_y : EuclideanGeometry.angle L K J = degToRad y)
  (h_angle_QSR_x : EuclideanGeometry.angle Q S R = degToRad x)
  (h_JKL_not_collinear : ¬ Collinear ℝ ({J, K, L} : Set P))
  (h_RQS_not_collinear : ¬ Collinear ℝ ({R, Q, S} : Set P))
  : y = 70 := by
  sorry
