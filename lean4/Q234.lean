import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log

-- Esteban's account balance as a function of time t (in years)
def estebanBalance (t : ℝ) : ℝ := 1000 * Real.exp (0.08 * t)

-- Anna's account balance as a function of time t (in years)
def annaBalance (t : ℝ) : ℝ := 750 * Real.exp (0.12 * t)

-- There exists a time t₀ near 7 (|t₀ - 7| ≤ 0.5) such that their balances are equal
theorem accountsBalanceAt_7 :
  ∃ t₀ : ℝ, abs (t₀ - 7) ≤ 0.5 ∧ estebanBalance t₀ = annaBalance t₀ := by
  sorry