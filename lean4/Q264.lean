import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Pow.Real

theorem find_L_is_14 :
  let r : ℝ := 3
  let h : ℝ := 13
  let L : ℝ := Real.sqrt (r ^ 2 + h ^ 2)
  L = 14 := by sorry