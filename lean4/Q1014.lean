import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def orthocenter (A B C : Point) : Point := sorry
noncomputable def orthogonalProjection (l : AffineSubspace ℝ Point) (p : Point) : Point := sorry
theorem F_is_midpoint_of_AG
  (A B C O H D E F G : Point)
  (h_noncollinear : ¬Collinear ℝ ({A, B, C} : Set Point))
  (hO : O = circumcenter A B C)
  (hH : H = orthocenter A B C)
  (hO_ne_H : O ≠ H)
  (hD : D = orthogonalProjection (line[ℝ, A, C]) B)
  (hE : E = orthogonalProjection (line[ℝ, A, B]) C)
  (L_AG : AffineSubspace ℝ Point)
    (hL_AG : L_AG = line[ℝ, A, orthogonalProjection (line[ℝ, H, O]) A])
  (hF_LAG : F ∈ L_AG) (hF_DE : F ∈ line[ℝ, D, E])
  (hG_LAG : G ∈ L_AG) (hG_BC : G ∈ line[ℝ, B, C])
  : F = midpoint ℝ A G := by
  sorry
