import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
open EuclideanGeometry InnerProductSpace FiniteDimensional
abbrev P2 := EuclideanSpace ℝ (Fin 2)
theorem concyclic_BHOG
  (A B C D E F H O G : P2)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P2))
  (hB_ne_C : B ≠ C)
  (hO_def : O = midpoint ℝ (midpoint ℝ A B) (midpoint ℝ A C)) 
  (hD_def : D = orthogonalProjection (line[ℝ, B, C]) A)
  (hE_on_AD : E ∈ line[ℝ, A, D])
  (hE_on_CO : E ∈ line[ℝ, C, O])
  (hF_def : F = midpoint ℝ A E)
  (hF_ne_O : F ≠ O)
  (hH_on_FO : H ∈ line[ℝ, F, O])
  (hH_on_BC : H ∈ line[ℝ, B, C])
  (hA_ne_O : A ≠ O)
  (hG_def : G = orthogonalProjection (line[ℝ, A, O]) C)
  (hB_ne_H : B ≠ H)
  (hO_ne_H : O ≠ H)
  (hG_ne_H : G ≠ H)
: ∃ (O₀ : P2) (r : ℝ), 0 < r ∧ ∀ X ∈ ({B, H, O, G} : Set P2), dist X O₀ = r := by
  sorry
