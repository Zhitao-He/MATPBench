import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def altitudeFoot (A : Point) (l : Set Point) : Point := sorry
noncomputable def orthocenter (A B C : Point) : Point := sorry
noncomputable def circumcenter (A B C : Point) : Point := sorry
theorem oh_perp_mn
  (A B C : Point)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (D : Point) (hD : D = altitudeFoot A (line[ℝ, B, C]))
  (E : Point) (hE : E = altitudeFoot B (line[ℝ, A, C]))
  (F : Point) (hF : F = altitudeFoot C (line[ℝ, A, B]))
  (H : Point) (hH : H = orthocenter A B C)
  (O : Point) (hO : O = circumcenter A B C)
  (M : Point) (hM : M ∈ line[ℝ, E, D] ∧ M ∈ line[ℝ, A, B])
  (N : Point) (hN : N ∈ line[ℝ, F, D] ∧ N ∈ line[ℝ, A, C])
  (hE_ne_D : E ≠ D)
  (hF_ne_D : F ≠ D)
  (h_ED_not_parallel_AB : ¬ AffineSubspace.Parallel (line[ℝ, E, D]) (line[ℝ, A, B]))
  (h_FD_not_parallel_AC : ¬ AffineSubspace.Parallel (line[ℝ, F, D]) (line[ℝ, A, C]))
  (h_O_ne_H : O ≠ H)
  (h_M_ne_N : M ≠ N)
  : inner ℝ (H -ᵥ O) (N -ᵥ M) = 0 := by
  sorry
