import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds

namespace Angle90Problem

-- Setup: Euclidean affine space over ℝ
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points
variable (A O B C : P)

-- Hypotheses
variable (hA_ne_O : A ≠ O)
variable (hC_ne_O : C ≠ O)
variable (h_collinear : Collinear ℝ ({A, O, B} : Set P))
variable (h_perp : Angle.IsRight (∠ A O C hA_ne_O hC_ne_O))

-- Define the angle in degrees
noncomputable def angleInDegrees (p₁ p₂ p₃ : P) (hp1 : p₁ ≠ p₂) (hp3 : p₃ ≠ p₂) : ℝ :=
  Angle.toReal (∠ p₁ p₂ p₃ hp1 hp3) * (180 / Real.pi)

-- Let x = ∠AOC in degrees
noncomputable def x : ℝ := angleInDegrees A O C hA_ne_O hC_ne_O

theorem x_eq_90 : x A O C hA_ne_O hC_ne_O = 90 := by
  rw [x, angleInDegrees]
  rw [Angle.IsRight_iff_toReal_eq_pi_div_two] at h_perp
  rw [h_perp]
  field_simp [Real.pi_ne_zero]
  ring

end Angle90Problem