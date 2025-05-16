import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry

variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]

theorem triangle_side_length_y
    (A B C : P)
    (h_AB : dist A B = y)
    (h_AC : dist A C = 5)
    (h_angle_BAC : ∠ B A C = π / 3)
    (h_angle_ACB : ∠ A C B = π / 2) :
    y = 10 :=
by sorry