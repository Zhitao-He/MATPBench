import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real EuclideanGeometry 
open scoped EuclideanGeometry 
namespace ProblemWithGivenX
abbrev P₂ := EuclideanSpace ℝ (Fin 2)
variable (O A B : P₂)
variable (x : ℝ)
noncomputable def radToDeg (r : ℝ) : ℝ := r * (180 / Real.pi)
variable (hx_definition : x = radToDeg (∠ A O B))
variable (h_is_right_angle : ∠ A O B = Real.pi / 2)
theorem x_is_90 : x = 90 := by
  sorry
end ProblemWithGivenX
