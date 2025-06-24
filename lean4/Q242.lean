import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
theorem cone_base_diameter_eq_10 :
  let h : ℝ := 12
  let s : ℝ := 13
  let r : ℝ := Real.sqrt (s^2 - h^2)
  let d : ℝ := 2 * r
  d = 10 := by
  sorry
