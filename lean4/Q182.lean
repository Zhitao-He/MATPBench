import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open scoped EuclideanGeometry

variable {V P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P] [NormedAddTorsor V P]

theorem find_x_is_17
    (A B C : P)
    (x : ℝ)
    (h_right_angle : ∠ A B C = π / 2)
    (h_isosceles : dist A B = dist B C)
    (h_leg_is_x : dist A B = x)
    (h_hypotenuse : dist A C = 17 * Real.sqrt 2)
    : x = 17 := by sorry