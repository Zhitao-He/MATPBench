import Mathlib.Data.Real.Basic

def f (x : ℝ) : ℝ := 5 * x - x ^ 2

noncomputable def g (x : ℝ) : ℝ := 3 * x - (1/2 : ℝ) * x ^ 2

theorem rainfall_mosquitos_bats_intersect :
  (f 0 = g 0) ∧ (f 4 = g 4) ∧
  (∀ x : ℝ, f x = g x → x = 0 ∨ |x - (4 : ℝ)| ≤ (1/4 : ℝ)) := by sorry
