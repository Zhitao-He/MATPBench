import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open Real EuclideanGeometry InnerProductSpace 
open scoped EuclideanGeometry 
open scoped Real 
namespace ArcMeasureProblem
abbrev P₂ := EuclideanSpace ℝ (Fin 2) 
variable (D F H : P₂)
variable (S : EuclideanGeometry.Sphere P₂) 
variable (hD_on_S : D ∈ S)
variable (hF_on_S : F ∈ S)
variable (hH_on_S : H ∈ S)
variable (hdF : D ≠ F)
variable (hhF : H ≠ F)
variable (hdH : D ≠ H)
variable (h_radius_pos : S.radius > 0)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
noncomputable def radiansToDegrees (r : ℝ) : ℝ := r * (180 / Real.pi)
variable (h_angle_DFH : ∠ D F H = degreesToRadians 81)
noncomputable def measureOfArc (p₁ p₃ : P₂) (circle : EuclideanGeometry.Sphere P₂) : ℝ :=
  radiansToDegrees (∠ p₁ circle.center p₃)
theorem measure_of_arc_DH_is_162 : measureOfArc D H S = 162 := by
  sorry
end ArcMeasureProblem
