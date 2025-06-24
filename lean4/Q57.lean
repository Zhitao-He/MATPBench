import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Base
namespace ProblemFormalization
noncomputable def p : ℝ := 99 / 100
noncomputable def f (x : ℝ) : ℝ := 1 / Real.rpow x p
noncomputable def q : ℝ := 1 - p
noncomputable def F (x : ℝ) : ℝ := Real.rpow x q / q
theorem integral_one_to_infty_diverges :
    Filter.Tendsto (fun t => F t - F 1) Filter.atTop Filter.atTop := by
  sorry
end ProblemFormalization
