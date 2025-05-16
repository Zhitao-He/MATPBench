import Mathlib.Data.Real.Basic


variable (f : ℝ → ℝ)



axiom h_graph :
  ∃ (a₁ a₂ a₃ : ℝ), a₁ < a₂ ∧ a₂ < a₃ ∧ f a₁ = f a₃ ∧ f a₁ ≠ f a₂


theorem graph_not_invertible :
  ¬ (∃ (g : ℝ → ℝ), (∀ x : ℝ, f (g x) = x) ∧ (∀ x : ℝ, g (f x) = x)) := by
  sorry