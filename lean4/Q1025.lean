import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def orthogonalProjection (l : AffineSubspace ℝ Point) (p : Point) : Point := sorry
theorem OM_eq_OD
  (A B C E F : Point)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hE_on_line_AB : E ∈ line[ℝ, A, B])
  (hF_on_line_AC : F ∈ line[ℝ, A, C])
  (hEMF_collinear : Collinear ℝ ({E, midpoint ℝ B C, F} : Set Point))
  (hAE_eq_AF : dist A E = dist A F)
  : dist (circumcenter A B C) (midpoint ℝ B C) =
    dist (circumcenter A B C) (orthogonalProjection (line[ℝ, B, C]) A) := by
  sorry
