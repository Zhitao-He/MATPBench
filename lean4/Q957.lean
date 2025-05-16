import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle

/-!
Formalization of the geometry problem:

Triangle ABC is inscribed in circle O, with D the midpoint of BC.
AD meets the circle again at E.
EF is parallel to BC and meets the circle again at F (F ≠ E).
From C, draw a perpendicular CG to AC meeting AE at G.
Prove that angle AGC = angle FGC.
-/

namespace GeometryProblem

open EuclideanGeometry
open Real

-- Work in the euclidean plane over ℝ
variable {P : Type} [EuclideanSpace ℝ P]

-- Let points O, A, B, C, D, E, F, G : P
variable (O : P)
variables (A B C D E F G : P)

-- Let k be the circle with center O and positive radius
variable (k : Sphere P)
variable (hO_center : k.center = O)
variable (hrad_pos : 0 < k.radius)

-- Hypotheses: A, B, C ∈ k and distinct (non-collinear)
variables (hA_onk : A ∈ k) (hB_onk : B ∈ k) (hC_onk : C ∈ k)
variables (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_A : C ≠ A)
variable (hABC_non_collinear : ¬ Collinear ℝ A B C)

-- D is the midpoint of BC
variable (hD_mid : D = midpoint ℝ B C)

-- E is on circle, A, D, E collinear, E ≠ A
variables (hE_onk : E ∈ k) (hADE_collinear : Collinear ℝ A D E) (hE_ne_A : E ≠ A)

-- F ≠ E, F ∈ k, EF ∥ BC
variables (hF_ne_E : F ≠ E) (hF_onk : F ∈ k)
variable (hEF_parallel_BC : (affineSpan ℝ ({E, F} : Set P)).direction = (affineSpan ℝ ({B, C} : Set P)).direction)

-- G is the intersection: G lies on both CG ⟂ AC at C, and AE
variables (hG_AE : G ∈ affineSpan ℝ ({A, E} : Set P))
variable (hCG_perp_AC : ⟪(G - C), (A - C)⟫_ℝ = 0) -- G lies on a line through C perpendicular to AC
variables (hG_ne_C : G ≠ C) (hA_ne_G : A ≠ G) (hF_ne_G : F ≠ G)

-- Theorem: ∠AGC = ∠FGC
theorem angle_agc_eq_fgc :
    ∠ A G C = ∠ F G C := by sorry

end GeometryProblem