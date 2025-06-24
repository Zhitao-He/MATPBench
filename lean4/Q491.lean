import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Data.Real.Basic 
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (M Q P_pt N : P)
variable (x : ℝ)
axiom h_M_ne_N : M ≠ N
axiom h_M_ne_Q : M ≠ Q
axiom h_N_ne_P_pt : N ≠ P_pt
axiom h_N_ne_M : N ≠ M
axiom h_Q_ne_M : Q ≠ M
axiom h_Q_ne_P_pt : Q ≠ P_pt
axiom h_P_pt_ne_Q : P_pt ≠ Q
axiom h_P_pt_ne_N : P_pt ≠ N
axiom h_angle_NMQ_val : EuclideanGeometry.angle N M Q = (10 * x) * (Real.pi / 180)
axiom h_angle_PNM_val : EuclideanGeometry.angle P_pt N M = (20 * x) * (Real.pi / 180)
axiom h_angle_PNM_eq_MQP : EuclideanGeometry.angle P_pt N M = EuclideanGeometry.angle M Q P_pt
axiom h_angle_QPN_eq_NMQ : EuclideanGeometry.angle Q P_pt N = EuclideanGeometry.angle N M Q
axiom h_x_positive : x > 0
axiom h_10x_lt_180 : 10 * x < 180 
axiom h_20x_lt_180 : 20 * x < 180 
axiom h_sum_consecutive_interior_angles_is_180 :
  EuclideanGeometry.angle N M Q + EuclideanGeometry.angle P_pt N M = Real.pi
theorem measure_of_angle_MQP_is_120 : EuclideanGeometry.angle M Q P_pt = 120 * (Real.pi / 180) := by
  sorry
