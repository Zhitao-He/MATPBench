import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
open EuclideanGeometry Real
variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P]
theorem midpoint_right_triangle_CD_length
    (A B C D : P)
    (h_right : ∠ A C B = π / 2)
    (h_midpoint : D = midpoint ℝ A B)
    (h_AB : dist A B = 10) :
    dist C D = 5 := by
  sorry