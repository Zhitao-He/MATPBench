import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

open EuclideanGeometry

abbrev P2 := EuclideanSpace ℝ (Fin 2)

section GeometryTheorem

variable
  (O P A B C D E F G : P2)
  (rO rP : ℝ)

-- Define the circles
def circO : Sphere P2 := ⟨O, rO⟩
def circP : Sphere P2 := ⟨P, rP⟩

-- Radii are positive and unequal
axiom h_rO_pos : 0 < rO
axiom h_rP_pos : 0 < rP
axiom h_radii_neq : rO ≠ rP

-- Circles intersect at A and B, which are distinct
axiom hA_on_circO : A ∈ circO
axiom hA_on_circP : A ∈ circP
axiom hB_on_circO : B ∈ circO
axiom hB_on_circP : B ∈ circP
axiom hA_neq_B : A ≠ B

-- Line CD passes through A, with C on ⊙O, D on ⊙P, and all three collinear, and C≠A, D≠A
axiom hC_on_circO : C ∈ circO
axiom hD_on_circP : D ∈ circP
axiom hA_C_D_collinear : Affine.collinear ℝ ({A, C, D} : Set P2)
axiom hC_neq_A : C ≠ A
axiom hD_neq_A : D ≠ A

-- The extension of CB meets ⊙P again at F, with C≠B, F≠B, and C, B, F collinear
axiom hF_on_circP : F ∈ circP
axiom hC_B_F_collinear : Affine.collinear ℝ ({C, B, F} : Set P2)
axiom hF_neq_B : F ≠ B
axiom hC_neq_B : C ≠ B

-- The extension of DB meets ⊙O again at E, with D≠B, E≠B, and D, B, E collinear
axiom hE_on_circO : E ∈ circO
axiom hD_B_E_collinear : Affine.collinear ℝ ({D, B, E} : Set P2)
axiom hE_neq_B : E ≠ B
axiom hD_neq_B : D ≠ B

-- G lies on the perpendicular through A to CD
axiom hG_perp_A_CD : ⟪G - A, D - C⟫ = 0

-- G lies on the perpendicular bisector of EF (i.e. is equidistant from E and F)
axiom hG_perp_bis_EF : dist G E = dist G F

theorem target :
    (dist A G) ^ 2 = (dist E G) ^ 2 + (dist A C) * (dist A D) := by
  sorry

end GeometryTheorem