import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
noncomputable def graphFunction (x : ℝ) : ℝ := Real.tan x
namespace GraphFunctionProperties
open Real Filter Topology
theorem definition_eq_sin_div_cos (x : ℝ) :
    graphFunction x = sin x / cos x := by
  sorry
theorem periodic (x : ℝ) :
    graphFunction (x + π) = graphFunction x := by
  sorry
theorem tendsto_atTop_at_asymptote_left (k : ℤ) :
    Tendsto graphFunction (𝓝[<] (π / 2 + k * π)) atTop := by
  sorry
theorem tendsto_atBot_at_asymptote_right (k : ℤ) :
    Tendsto graphFunction (𝓝[>] (π / 2 + k * π)) atBot := by
  sorry
theorem value_at_zero : graphFunction 0 = 0 := by
  sorry
theorem cosine_zero_at_asymptotes (k : ℤ) :
    cos (π / 2 + k * π) = 0 := by
  sorry
end GraphFunctionProperties
