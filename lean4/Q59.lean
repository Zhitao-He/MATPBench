import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Data.Real.Basic
def purpleFunc (x : ℝ) : ℝ := x
def greenFunc (x : ℝ) : ℝ := x^2
noncomputable def blueFunc (x : ℝ) : ℝ := abs x * Real.exp x
theorem blueFuncLimitAtNegInfinityIsZero :
  Filter.Tendsto blueFunc Filter.atBot (nhds 0) := by
  sorry
