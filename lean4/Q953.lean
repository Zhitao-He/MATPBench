import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

open EuclideanGeometry
open Affine
open Metric

section SemicircleTheorem

-- Define Point as points in ℝ²
abbrev Point := EuclideanSpace ℝ (Fin 2)

variable {O A B C D P E F : Point}
variable {r : ℝ}

-- (1) O is the center, AB is diameter of a circle centered at O with radius r > 0
variable (h_r_pos : 0 < r)
variable (h_AB_diameter : A ∈ sphere O r ∧ B ∈ sphere O r ∧ O = midpoint ℝ A B)

-- (2) A, B, O are collinear and on the same horizontal line (y-coords equal)
variable (h_A_yO : (A : Fin 2 → ℝ) 1 = (O : Fin 2 → ℝ) 1)
variable (h_B_yO : (B : Fin 2 → ℝ) 1 = (O : Fin 2 → ℝ) 1)

-- (3) C, D are on the semicircle; semicircle is y ≥ O.y
variable (h_C_on_sc : C ∈ sphere O r ∧ (C : Fin 2 → ℝ) 1 ≥ (O : Fin 2 → ℝ) 1)
variable (h_D_on_sc : D ∈ sphere O r ∧ (D : Fin 2 → ℝ) 1 ≥ (O : Fin 2 → ℝ) 1)

-- (4) Distinctness hypotheses, lines are well-defined
variable (h_A_ne_B : A ≠ B)
variable (h_C_ne_D : C ≠ D)
variable (h_C_ne_A : C ≠ A)
variable (h_D_ne_A : D ≠ A)

-- (5) P lies at the intersection of:
--   (i) the tangent line to the circle at B (perpendicular to OB)
--   (ii) and the line CD
variable (h_P_on_tan_B : ⟪P -ᵥ B, B -ᵥ O⟫ = 0)
variable (h_P_on_CD : Affine.collinear ℝ ({C, D, P} : Set Point))

-- (6) E lies on:
--   (i) the ray from P through O (≠ P), i.e. E = P + k₁ (O - P), with k₁ > 0,
--   (ii) and the line CA
variable (h_E_on_ray_PO : ∃ k₁ : ℝ, 0 < k₁ ∧ E = P +ᵥ k₁ • (O -ᵥ P))
variable (h_E_on_CA : Affine.collinear ℝ ({C, A, E} : Set Point))

-- (7) F lies on:
--   (i) the same ray from P through O, i.e. F = P + k₂ (O - P), with k₂ > 0,
--   (ii) and the line AD
variable (h_F_on_ray_PO : ∃ k₂ : ℝ, 0 < k₂ ∧ F = P +ᵥ k₂ • (O -ᵥ P))
variable (h_F_on_AD : Affine.collinear ℝ ({A, D, F} : Set Point))

-- (8) The conclusion: OE = OF
theorem semicircle_OE_eq_OF : dist O E = dist O F := by
  sorry

end SemicircleTheorem