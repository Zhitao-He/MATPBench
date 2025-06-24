import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def Concyclic (s : Set Point) : Prop := sorry
noncomputable def circumcenter (A B C : Point) : Point := sorry
theorem concyclic_BHOG
  (A B C O D E F G H : Point)
  (hA_ne_B : A ≠ B)
  (hB_ne_C : B ≠ C)
  (hC_ne_A : C ≠ A)
  (hABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hO_circum : O = circumcenter A B C)
  (hD_def : D = EuclideanGeometry.orthogonalProjection (line[ℝ, B, C]) A)
  (hE_on_AD : E ∈ line[ℝ, A, D])
  (hE_on_CO : E ∈ line[ℝ, C, O])
  (hAD_CO_not_parallel : ¬ Parallel (line[ℝ, A, D]) (line[ℝ, C, O]))
  (hF_mid : F = midpoint ℝ A E)
  (hF_ne_O : F ≠ O)
  (hH_on_FO : H ∈ line[ℝ, F, O])
  (hH_on_BC : H ∈ line[ℝ, B, C])
  (hFO_BC_not_parallel : ¬ (line[ℝ, F, O] ∥ line[ℝ, B, C]))
  (hG_def : G = EuclideanGeometry.orthogonalProjection (line[ℝ, A, O]) C)
  : Concyclic ({B, H, O, G} : Set Point) := by
  sorry
