import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic

open EuclideanGeometry InnerProductSpace Real

-- We work in the Euclidean plane
local notation "P" => EuclideanPlane

namespace ProblemCircumcircleCGeqCD

-- Declare all points involved in the problem as variables
variable (A B C D E F G O : P)

-- Let R be the circumradius, with proof of positivity
variable (R : ℝ)
variable (hR_pos : 0 < R)

-- O is the circumcenter of triangle ABC; A, B, C all lie distance R from O
variable (hA_on_circle : dist A O = R)
variable (hB_on_circle : dist B O = R)
variable (hC_on_circle : dist C O = R)

-- A, B, C are not collinear
variable (hABC_noncollinear : ¬ Collinear ℝ A B C)

-- From non-collinearity, points are pairwise distinct
variable (hA_ne_B : A ≠ B)
variable (hB_ne_C : B ≠ C)
variable (hC_ne_A : C ≠ A)

-- D is the midpoint of arc BAC (i.e., the arc BC that contains A)
-- E is the midpoint of arc BC (the arc BC not containing A)
-- Both on circumcircle
variable (hD_on_circle : dist D O = R)
variable (hE_on_circle : dist E O = R)

-- O is the midpoint of segment DE, so DE is a diameter
variable (hO_mid_DE : O = midpoint ℝ D E)

-- Vector DE ⟂ vector BC
variable (hDE_perp_BC : (D - E) ⟂ᵥ (B - C))

-- Affine subspace for line BC
def lineBC : AffineSubspace ℝ P := lineThrough ℝ B C

-- A is not on line BC
variable (hA_not_on_lineBC : A ∉ lineBC)

-- A and D on the same side of BC; A and E on opposite sides
variable (hA_D_same_side_BC : lineBC.SameSide A D)
variable (hA_E_separates_BC : lineBC.Separates A E)

-- F is foot of the perpendicular from C to AB (lies on AB, CF ⟂ AB)
def lineAB : AffineSubspace ℝ P := lineThrough ℝ A B

variable (hF_on_lineAB : F ∈ lineAB)
variable (hCF_perp_AB : (C - F) ⟂ᵥ (B - A))

-- E ≠ F
variable (hE_ne_F : E ≠ F)

-- FG ⟂ EF at F
variable (hFG_perp_EF : (G - F) ⟂ᵥ (E - F))

-- G lies on extension of DA (i.e., collinear D, A, G, with D ≠ A)
variable (hD_ne_A : D ≠ A)
variable (hG_on_line_DA : Collinear ℝ D A G)

-- Goal: dist C G = dist C D
theorem cg_eq_cd : dist C G = dist C D := by
  sorry

end ProblemCircumcircleCGeqCD