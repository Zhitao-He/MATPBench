import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open Real
namespace RightTriangleProblem
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (A B C : P)
variable (hAC : dist A C = 5)
variable (hBC : dist B C = 3)
variable (hRight : EuclideanGeometry.angle A C B = π / 2)
theorem length_AB_is_sqrt_34 (A B C : P)
  (hAC : dist A C = 5) (hBC : dist B C = 3) (hRight : EuclideanGeometry.angle A C B = π / 2) :
  dist A B = sqrt 34 := by
  sorry
end RightTriangleProblem
