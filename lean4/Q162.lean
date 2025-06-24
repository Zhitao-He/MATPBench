import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open Real EuclideanGeometry 
open scoped EuclideanGeometry 
namespace Problem
abbrev Pt := EuclideanSpace ℝ (Fin 2)
variable (P Q R S : Pt)
axiom hPQR_right_angle : (∠ P Q R) = Real.pi / 2
axiom hPQS_angle : (∠ P Q S) = 51 * (Real.pi / 180)
axiom hQRP_angle : (∠ Q R P) = 33 * (Real.pi / 180)
axiom hS_on_PR : S ∈ segment ℝ P R
theorem angle2_measure : (∠ R Q S) = 39 * (Real.pi / 180) := by
  sorry 
end Problem
