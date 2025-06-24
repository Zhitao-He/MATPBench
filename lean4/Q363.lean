import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem right_triangle_median_altitude_ratio
  (A B C D E : P)
  (h_noncollinear_ABC : sorry)
  (h_angle_B_90 : EuclideanGeometry.angle A B C = Real.pi / 2)
  (hD_midpoint : D = midpoint ℝ A C)
  (hE_on_segment_AC : sorry)
  (hBE_altitude_perp : sorry)
  (h_BD_eq_2DE : dist B D = 2 * dist D E)
  (h_AB_gt_BC : dist A B > dist B C)
  : dist A B / dist E C = 2 * Real.sqrt 3 := by sorry
