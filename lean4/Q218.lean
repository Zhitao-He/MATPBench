import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
namespace GeometryProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
variables (A B C E D : P)
variable (h_angle_A : ∠ B A C = (61 / 180) * Real.pi)
variable (h_angle_B : ∠ A B C = (73 / 180) * Real.pi)
variable (h_E_foot : E = EuclideanGeometry.orthogonalProjection (affineSpan ℝ ({A, B} : Set P)) C)
variable (h_D_foot : D = EuclideanGeometry.orthogonalProjection (affineSpan ℝ ({B, E} : Set P)) C)
variable (h_CE : dist C E = 25)
variable (h_angle_AEB : ∠ A E B = (90 / 180) * Real.pi)
variable (h_angle_EDB : ∠ E D B = (90 / 180) * Real.pi)
def targetLengthBD : ℝ := 63.0
theorem length_BD : dist B D = targetLengthBD := by
  sorry
end GeometryProblem
