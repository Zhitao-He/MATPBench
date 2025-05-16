import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic

open Real

-- We work in a Euclidean space over ℝ with norm, inner product and metric structure
variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]

-- Let P, Q, R, S be points in P
variable (p q r s : P)

-- Let y : ℝ represent distance PQ = y
variable (y : ℝ)

-- Given: PQ = y, SP = 2, SR = 4
@[aesop unsafe 10% rule]
axiom h_PQ_eq_y : dist p q = y
@[aesop unsafe 10% rule]
axiom h_SP_eq_2 : dist s p = 2
@[aesop unsafe 10% rule]
axiom h_SR_eq_4 : dist s r = 4

-- Angles: PQ ⟂ RQ at Q, RS ⟂ QS at S
@[aesop unsafe 10% rule]
axiom h_PQR_right_angle : ∠ p q r = π / 2
@[aesop unsafe 10% rule]
axiom h_RSQ_right_angle : ∠ r s q = π / 2

-- Angle PS ⟂ QS at S
@[aesop unsafe 10% rule]
axiom h_PSQ_right_angle : ∠ p s q = π / 2

-- The conclusion: value of y is 2 * sqrt 3
theorem find_value_y : y = 2 * sqrt 3 := by
  sorry