import Mathlib.Data.Real.Basic

theorem x_eq_3 (x : ℝ) :
  let ab := 6 * x + 2
  let ac := 9 * x - 2
  (h_eq : ab / 8 = ac / 10) →
  x = 3 := by
  sorry