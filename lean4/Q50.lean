import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

noncomputable def f (x : ℝ) : ℝ := 2 * Real.sin x + 2

theorem global_maximum_of_f_is_4 :
    (∀ x : ℝ, f x ≤ 4) ∧ (∃ x₀ : ℝ, f x₀ = 4) := by
  sorry
