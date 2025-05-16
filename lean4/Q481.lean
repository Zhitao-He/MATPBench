import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle

open EuclideanGeometry

variable {P : Type*} [EuclideanPlane P] (A B C : P) (x : ℝ)

theorem right_triangle_side_length
    (h_AB : dist A B = (4 / 7 : ℝ))
    (h_AC : dist A C = x)
    (h_BC : dist B C = (5 / 7 : ℝ))
    (h_right_angle : Angle.IsRight (∠ B A C)) :
    x = (3 / 7 : ℝ) := by
  sorry