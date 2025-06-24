import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
open Real EuclideanGeometry
noncomputable section
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem length_of_XY
  (W X Y Z T : PPoint)
  (h_WT : dist W T = 3)
  (h_WX_perp_YX : EuclideanGeometry.angle W X Y = Real.pi / 2)
  (h_XY_perp_ZY : EuclideanGeometry.angle X Y Z = Real.pi / 2)
  (h_YZ_perp_WZ : EuclideanGeometry.angle Y Z W = Real.pi / 2)
  (h_ZW_perp_XW : EuclideanGeometry.angle Z W X = Real.pi / 2)
  (h_XY_eq_YZ : dist X Y = dist Y Z)
  (h_YZ_eq_ZW : dist Y Z = dist Z W)
  (h_ZW_eq_WX : dist Z W = dist W X)
  (h_T_midpoint_WY : T = midpoint ℝ W Y)
  (h_T_midpoint_XZ : T = midpoint ℝ X Z)
  : dist X Y = 3 * Real.sqrt 2 := by
  sorry
end
