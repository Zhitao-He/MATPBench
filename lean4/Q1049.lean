import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def orthocenter (A B C : Point) : Point := sorry
theorem orthocenter_midpoint_theorem
  (A B C H D E F : Point)
  (h_ABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (h_H_is_orthocenter : H = orthocenter A B C)
  (h_D_is_midpoint_BC : D = midpoint ℝ B C)
  (h_D_ne_H : D ≠ H)
  (h_E_ne_F : E ≠ F)
  (h_E_on_AB : E ∈ line[ℝ, A, B])
  (h_F_on_AC : F ∈ line[ℝ, A, C])
  (h_H_on_EF : H ∈ line[ℝ, E, F])
  (h_EF_perp_DH : inner ℝ (F -ᵥ E) (H -ᵥ D) = 0)
  : H = midpoint ℝ E F := by
  sorry
