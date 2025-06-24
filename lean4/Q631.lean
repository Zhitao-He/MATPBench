import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry Affine AffineSubspace
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem find_z_value
  (H M P_pt R C S : PPoint)
  (x y z : ℝ)
  (h_angle_HPM : EuclideanGeometry.angle H P_pt M = (4 * y) * Real.pi / 180)
  (h_angle_MPR : EuclideanGeometry.angle M P_pt R = 68 * Real.pi / 180)
  (h_angle_PRC : EuclideanGeometry.angle P_pt R C = x * Real.pi / 180)
  (h_angle_SCR : EuclideanGeometry.angle S C R = (5 * z + 2) * Real.pi / 180)
  (h_CMPR_is_parallelogram : line[ℝ, C, M] ∥ line[ℝ, P_pt, R])
  (h_angle_RCM_eq_MPR : EuclideanGeometry.angle R C M = EuclideanGeometry.angle M P_pt R)
  (h_S_C_M_collinear_C_between : Sbtw ℝ S C M)
  (h_R_not_on_line_SCM : ¬ Collinear ℝ ({S, C, R} : Set PPoint))
  (h_SCR_plus_RCM_eq_180 : EuclideanGeometry.angle S C R + EuclideanGeometry.angle R C M = Real.pi) :
  z = 22 := by
  sorry
