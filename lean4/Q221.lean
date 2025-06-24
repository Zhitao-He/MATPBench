import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
def quarterCircleRadius : ℝ := 7
noncomputable def areaOfQuarterCircle (r : ℝ) : ℝ :=
  (1 / 4) * Real.pi * r ^ 2
noncomputable def givenAreaValue : ℝ :=
  (147 * Real.pi) / 4
theorem area_quarter_circle :
    areaOfQuarterCircle quarterCircleRadius = givenAreaValue := by
  sorry
