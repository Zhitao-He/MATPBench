import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry InnerProductSpace
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : P) : P := sorry
noncomputable def triangle_interiorContains (A B C D : P) : Prop := sorry
namespace Problem
theorem brocard_symmedian_related_problem
  (A B C D E F O : P)
  (h_triangle : ¬ Collinear ℝ ({A, B, C} : Set P))
  (hD_interior : triangle_interiorContains A B C D)
  (hO : O = circumcenter A B C)
  (h_angle_DAB_DBC : angle D A B = angle D B C)
  (h_angle_DAC_DCB : angle D A C = angle D C B)
  (hE_midpoint : E = midpoint ℝ A D)
  (hE_ne_F : E ≠ F)
  (hEF_perp_AD : inner ℝ (F -ᵥ E) (D -ᵥ A) = 0)
  (hF_on_CB_extension : Sbtw ℝ F C B)
  (hF_ne_O : F ≠ O) :
  angle A F D = 2 * angle O F C := by
  sorry
end Problem
