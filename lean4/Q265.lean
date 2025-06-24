import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
theorem volume_cylinder_check :
  let r : ℝ := 3
  let h : ℝ := 13
  let volume : ℝ := Real.pi * r ^ 2 * h
  let target : ℝ := 36757
  |volume * 100 - target * 100| ≤ 1 := by sorry