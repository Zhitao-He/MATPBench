import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
open EuclideanGeometry AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem E_is_midpoint_FG
  (A B C D E F G I : P)
  (ω : EuclideanGeometry.Sphere P)
  (h_noncol : ¬ Collinear ℝ ({A, B, C} : Set P))
  (hω_center : ω.center = I)
  (hA_on_ω : A ∉ ω) 
  (hB_on_ω : B ∉ ω)
  (hC_on_ω : C ∉ ω)
  (hD_on_BC : D ∈ line[ℝ, B, C])
  (hD_on_ω : D ∈ ω)
  (lID lBC : AffineSubspace ℝ P)
  (hD_on_lID : D ∈ lID) (hI_on_lID : I ∈ lID)
  (hB_on_lBC : B ∈ lBC) (hC_on_lBC : C ∈ lBC)
  (hID_perp_BC : direction lID ⟂ direction lBC)
  (hI_ne_D : I ≠ D)
  (hE_on_BC : E ∈ line[ℝ, B, C])
  (hI_ne_E : I ≠ E)
  (hA_ne_D : A ≠ D)
  (lIE lAD : AffineSubspace ℝ P)
  (hI_on_lIE : I ∈ lIE) (hE_on_lIE : E ∈ lIE)
  (hA_on_lAD : A ∈ lAD) (hD_on_lAD : D ∈ lAD)
  (hIE_parallel_AD : AffineSubspace.Parallel lIE lAD)
  (hF_on_AB : F ∈ line[ℝ, A, B])
  (hG_on_AC : G ∈ line[ℝ, A, C])
  (hF_ne_G : F ≠ G)
  (h_tangent_E : E ∈ ω)
  (lFG : AffineSubspace ℝ P)
  (hE_on_lFG : E ∈ lFG)
  (h_tangent_FG : True) 
  (hF_on_lFG : F ∈ lFG) (hG_on_lFG : G ∈ lFG) :
  E = midpoint ℝ F G :=
by
  sorry
