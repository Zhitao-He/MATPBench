import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real

noncomputable def blueFunction (x : ℝ) : ℝ := Real.exp x + x ^ 2


theorem blueFunction_limit_at_neg_infty_is_zero :
    Filter.Tendsto blueFunction Filter.atBot (nhds 0) :=
  by sorry
