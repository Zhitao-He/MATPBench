import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle

open EuclideanGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

theorem triangle_perimeter_eq_angle_side
    (A B C : P)
    (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P))
    (h_perimeter : dist A B + dist B C + dist C A = 32)
    (h_angle_eq : ∠ A B C = ∠ B C A)
    (h_BC : dist B C = 12) :
    dist A B = 10 := by sorry
