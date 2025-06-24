import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
open scoped EuclideanGeometry
abbrev E := EuclideanSpace ℝ (Fin 2)
noncomputable def deg_to_rad (deg : ℝ) : ℝ := deg * Real.pi / 180
theorem find_x_value
  (P Q R S T : E) (x y z : ℝ)
  (h_RP_len : dist R P = y + 4)
  (h_RS_len : dist R S = 27)
  (h_TP_len : dist T P = 2 * y - 5)
  (h_TQ_len : dist T Q = 5 * x)
  (h_angle_PQT : ∠ P Q T = deg_to_rad 95)
  (h_angle_RQP : ∠ R Q P = deg_to_rad 33)
  (h_angle_TSP : ∠ T S P = deg_to_rad (3 * z))
  (h_QTSR_is_parallelogram : T -ᵥ Q = S -ᵥ R)
  (h_P_is_midpoint_RT : P = midpoint ℝ R T)
  (h_P_is_midpoint_QS : P = midpoint ℝ Q S)
  (h_RP_pos : y + 4 > 0)
  (h_TP_pos : 2 * y - 5 > 0)
  (h_TQ_pos : 5 * x > 0)
  (h_z_angle_range : 0 ≤ 3 * z ∧ 3 * z ≤ 180)
  : x = 27 / 5 := by
  sorry
