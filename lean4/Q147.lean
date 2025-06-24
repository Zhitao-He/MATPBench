import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace QuadrilateralProblem
open EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C D : P)
theorem angle_C_is_right : EuclideanGeometry.angle B C D = Real.pi / 2 := by
  sorry
end QuadrilateralProblem
