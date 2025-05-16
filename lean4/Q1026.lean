import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.PerpBisector
import Mathlib.Geometry.Euclidean.Triangle

open EuclideanGeometry

namespace GeomProblem

variable {P : Type*} [EuclideanSpace ℝ P 2]

variables (A B C O D E F G M N : P)

-- Circle O with radius r
variable (r : ℝ)

-- Triangle ABC is non-degenerate and lies on circle O
variable (hA_ne_B : A ≠ B)
variable (hB_ne_C : B ≠ C)
variable (hC_ne_A : C ≠ A)
variable (hABC_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
variable (hA_on_circle : dist A O = r)
variable (hB_on_circle : dist B O = r)
variable (hC_on_circle : dist C O = r)

-- F is midpoint of BC, perpendicular bisector meets circle at D and E
variable (hF_midpoint : F = midpoint ℝ B C)
variable (hD_on_circle : dist D O = r)
variable (hE_on_circle : dist E O = r)
variable (hD_on_perp_bis : D ∈ perpBisector ℝ B C)
variable (hE_on_perp_bis : E ∈ perpBisector ℝ B C)
variable (hD_ne_E : D ≠ E)

-- FG ∥ AD
variable (hA_ne_D : A ≠ D)
variable (hF_ne_G : F ≠ G)
variable (hFG_parallel_AD : line[ℝ, F, G] ∥ line[ℝ, A, D])

-- MN passes through G, perpendicular to EG
variable (hE_ne_G : E ≠ G)
variable (hM_ne_N : M ≠ N)
variable (hG_on_MN : G ∈ line[ℝ, M, N])
variable (hMN_perp_EG : line[ℝ, M, N] ⟂ line[ℝ, E, G])

-- M ∈ AB, N ∈ AC
variable (hM_on_AB : M ∈ line[ℝ, A, B])
variable (hN_on_AC : N ∈ line[ℝ, A, C])

theorem GM_eq_GN : dist G M = dist G N := by
  sorry

end GeomProblem