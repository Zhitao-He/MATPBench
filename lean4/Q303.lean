import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem angleBACIsRightAngle
  (A B C D : P)
  (hADeqBD : dist A D = dist B D)
  (hBDeqCD : dist B D = dist C D)
  (hDonSegmentBC : D ∈ segment ℝ B C)
  (hBCAAngle : ∠ B C A = (40 / 180) * Real.pi)
  : ∠ B A C = Real.pi / 2 := by
  sorry
