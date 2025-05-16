import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry

open Real

namespace RightTriangleProblem


variable (A B C : EuclideanSpace ℝ (Fin 2))
variable (x : ℝ)



axiom hAC : dist A C = x

axiom hBA : dist B A = 7

axiom hBC : dist B C = 19

axiom hRightAngle : ∠ B A C = π / 2

axiom hxpos : 0 < x


theorem value_of_x : x = 2 * Real.sqrt 78 := by sorry

end RightTriangleProblem
