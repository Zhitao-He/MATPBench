import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Convex.Side
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def orthogonalProjection (l : AffineSubspace ℝ Point) (p : Point) : Point := sorry
theorem G_is_midpoint_of_AD
  (A B C D E F G O : Point)
  (h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hO_mid_BC : O = midpoint ℝ B C)
  (hA_on_circle : dist A O = dist O B)
  (hD_on_circle : dist D O = dist O B)
  (hD_ne_B : D ≠ B)
  (hD_ne_C : D ≠ C)
  (hD_opposite_A_BC : ¬ (line[ℝ, B, C]).WSameSide A D)
  (hE_def : E = orthogonalProjection (line[ℝ, B, C]) D)
  (hF_def : F = orthogonalProjection (line[ℝ, B, A]) D)
  (hG_on_line_EF : G ∈ line[ℝ, E, F])
  (hG_on_line_AD : G ∈ line[ℝ, A, D])
  : G = midpoint ℝ A D := by
  sorry
