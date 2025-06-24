import Mathlib.Data.Real.Basic
noncomputable def f (x : ℝ) : ℝ := (x ^ 3 + 3 * x ^ 2 - 6 * x - 8) / 4
theorem cubic_not_periodic : ¬ (∃ T : ℝ, T ≠ 0 ∧ ∀ x : ℝ, f (x + T) = f x) := by sorry
