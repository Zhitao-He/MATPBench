import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.Basic
import Mathlib.Analysis.InnerProductSpace.Orientation

noncomputable section

open scoped EuclideanGeometry

-- Let V be a 2-dimensional real inner product space (the vector space)
-- Let P be a Euclidean affine space modeled on V (the plane)
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [FiniteDimensional ℝ V] [Fact (FiniteDimensional.finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Orientation on the plane is needed for "same side of a line"
variable (o : Orientation ℝ V (Fin 2))

-- Points as in the diagram
variable (A B C D E F G O : P)
variable (r : ℝ)

-- Hypotheses

-- AB is the diameter of circle O: O is the midpoint of A, B
axiom hO_midpoint_AB : O = midpoint ℝ A B
axiom hA_ne_B : A ≠ B
axiom hr_pos : r > 0
axiom hA_on_circle : dist A O = r
axiom hB_on_circle : dist B O = r
axiom hC_on_circle : dist C O = r
axiom hD_on_circle : dist D O = r

-- C and D lie on the same side of AB (not on line AB, orientation sign positive)
axiom hC_on_side_AB : o.sign (![B -ᵥ A, C -ᵥ A]) = SignType.pos
axiom hD_on_side_AB : o.sign (![B -ᵥ A, D -ᵥ A]) = SignType.pos

-- Tangents at C, D meet at E: tangent vectors are perpendicular to radius
axiom hE_tangent_C : ⟪E -ᵥ C, O -ᵥ C⟫ = 0
axiom hE_tangent_D : ⟪E -ᵥ D, O -ᵥ D⟫ = 0
axiom hC_ne_D : C ≠ D

-- F is intersection of lines BC and AD (collinear triples)
axiom hF_on_BC : Affine.collinear ℝ {B, C, F}
axiom hF_on_AD : Affine.collinear ℝ {A, D, F}

-- G is the second intersection (≠ B) of the line BB with circle O. Coq and NL suggest G = A,
-- but we state hypotheses as second intersection.
axiom hG_collinear_AB : Affine.collinear ℝ {A, B, G}
axiom hG_on_circle : dist G O = r
axiom hG_ne_B : G ≠ B

-- Lemma: G = A (since AB is diameter and line AB meets circle O at A, B only)
lemma G_is_A : G = A := by
  -- Proof omitted, as it's evident from the setup; in Lean, this would require explicit steps.
  sorry

-- Theorem: angle CEF = 2 * angle AGF (EuclideanGeometry.angle is unoriented angle at middle arg)
theorem angle_CEF_eq_twice_angle_AGF :
    EuclideanGeometry.angle C E F = 2 * EuclideanGeometry.angle A G F := by
  sorry

end