import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def orthogonalProjection (l : AffineSubspace ℝ Point) (p : Point) : Point := sorry
theorem AF_bisects_angle_GFC
  (A B C G : Point)
  (hA_ne_B : A ≠ B)
  (hA_ne_C : A ≠ C)
  (hB_ne_C : B ≠ C)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hAB_gt_AC : dist A B > dist A C)
  (hA_ne_F : A ≠ F)
  (hD_ne_E : D ≠ E)
  (hAG_perp_AF : inner ℝ (G -ᵥ A) (midpoint ℝ B C -ᵥ A) = 0) 
  (hG_on_DE : ∃ (r : ℝ), G = (orthogonalProjection (line[ℝ, A, C]) B) + r • ((orthogonalProjection (line[ℝ, A, B]) C) -ᵥ (orthogonalProjection (line[ℝ, A, C]) B)))
  : EuclideanGeometry.angle G (midpoint ℝ B C) A = EuclideanGeometry.angle A (midpoint ℝ B C) C := by
  sorry
