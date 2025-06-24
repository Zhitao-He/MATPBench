import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
namespace ShadedAreaProblem
open Real
noncomputable def f (x : ℝ) : ℝ := Real.sqrt (9 - (x - 3) ^ 2)
def lowerBound : ℝ := 3
def upperBound : ℝ := 6
noncomputable def shadedArea : ℝ := ∫ x in lowerBound..upperBound, f x
noncomputable def targetAreaValue : ℝ := 707 / 100
theorem problem_to_prove : shadedArea = targetAreaValue := by
  sorry
end ShadedAreaProblem
