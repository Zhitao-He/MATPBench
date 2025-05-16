import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry

variable {A B C M N : EuclideanPlane}

theorem angle_ACB_is_94_degrees
  (hABC : ¬ Collinear ℝ A B C)
  (hM : M ∈ openSegment ℝ A B)
  (hN : N ∈ openSegment ℝ A B)
  (hAN : dist A N = dist A C)
  (hBM : dist B M = dist B C)
  (hMCN : ∠ M C N = (43 / 180 : ℝ) * π) :
  ∠ A C B = (94 / 180 : ℝ) * π :=
by sorry