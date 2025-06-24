import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcircle (A B C : Point) (_ : ¬Collinear ℝ ({A, B, C} : Set Point)) : EuclideanGeometry.Sphere Point := sorry
theorem four_circles_concurrent
  (A B C D E F S T : Point)
  (h_noncollinear_ABC : ¬Collinear ℝ ({A, B, C} : Set Point))
  (h_noncollinear_ABD : ¬Collinear ℝ ({A, B, D} : Set Point))
  (h_noncollinear_CDA : ¬Collinear ℝ ({C, D, A} : Set Point))
  (h_noncollinear_CDB : ¬Collinear ℝ ({C, D, B} : Set Point))
  (k : ℝ) (hk : 0 < k)
  (hE : E = A +ᵥ ((k / (1 + k)) • (D -ᵥ A)))
  (hF : F = B +ᵥ ((k / (1 + k)) • (C -ᵥ B)))
  (hS_col_AB : Collinear ℝ ({A, B, S} : Set Point))
  (hS_col_EF : Collinear ℝ ({E, F, S} : Set Point))
  (hT_col_CD : Collinear ℝ ({C, D, T} : Set Point))
  (hT_col_EF : Collinear ℝ ({E, F, T} : Set Point))
  (hE_ne_F : E ≠ F)
  (h_noncollinear_AES : ¬Collinear ℝ ({A, E, S} : Set Point))
  (h_noncollinear_BFS : ¬Collinear ℝ ({B, F, S} : Set Point))
  (h_noncollinear_CFT : ¬Collinear ℝ ({C, F, T} : Set Point))
  (h_noncollinear_DET : ¬Collinear ℝ ({D, E, T} : Set Point))
  : ∃ M : Point,
      M ∈ circumcircle A E S h_noncollinear_AES ∧
      M ∈ circumcircle B F S h_noncollinear_BFS ∧
      M ∈ circumcircle C F T h_noncollinear_CFT ∧
      M ∈ circumcircle D E T h_noncollinear_DET := by
  sorry
