import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real EuclideanGeometry
theorem value_tan_angle_ABC (A B C : EuclideanPlane ℝ) :
    dist B C = 14 →
    dist A C = 48 →
    dist A B = 50 →
    ∠ A C B = π / 2 →
    Real.tan (∠ A B C) = 24 / 7 :=
by sorry