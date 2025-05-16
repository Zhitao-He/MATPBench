import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real


def r : ℝ := 4

noncomputable def discardedFraction : ℝ := 1 / 4

noncomputable def arcLength (fraction radius : ℝ) : ℝ :=
  fraction * (2 * Real.pi * radius)

noncomputable def discardedArcLength : ℝ := arcLength discardedFraction r

theorem discardedArcLength_eq_2pi :
  discardedArcLength = 2 * Real.pi := by sorry
