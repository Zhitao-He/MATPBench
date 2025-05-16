import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic

open Real

namespace Geometry.MidpointTangency

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [FiniteDimensional ℝ V] (hV2 : FiniteDimensional.finrank ℝ V = 2)
variable {Pt : Type*} [MetricSpace Pt] [NormedAddTorsor V Pt]

variables (O P A B C D E F : Pt)
variables (rO rP : ℝ)

section Hypotheses

variable (hrO_pos : 0 < rO) (hrP_pos : 0 < rP)

variable (hA_on_O : dist A O = rO) (hA_on_P : dist A P = rP)
variable (hB_on_O : dist B O = rO) (hB_on_P : dist B P = rP)
variable (hA_ne_B : A ≠ B)

variable (hB_ne_O : B ≠ O)
variable (hC_on_BO : ∃ t₁ : ℝ, C = B +ᵥ t₁ • (O -ᵥ B))
variable (hP_ne_A : P ≠ A)
variable (hC_on_PA : ∃ t₂ : ℝ, C = P +ᵥ t₂ • (A -ᵥ P))
variable (hO_ne_P : O ≠ P)

variable (hD_on_circleO : dist D O = rO)
variable (hC_ne_D : C ≠ D)
variable (h_CD_tangent : IsRightAngle O D C)

variable (hE_on_circleP : dist E P = rP)
variable (hC_ne_E : C ≠ E)
variable (h_CE_tangent : IsRightAngle P E C)

variable (hD_ne_E : D ≠ E)
variable (hF_on_DE : ∃ s : ℝ, F = D +ᵥ s • (E -ᵥ D))
variable (hF_on_AB : ∃ t : ℝ, F = A +ᵥ t • (B -ᵥ A))

theorem intersection_tangent_midpoint :
    F = midpoint ℝ D E := by sorry

end Hypotheses

end Geometry.MidpointTangency