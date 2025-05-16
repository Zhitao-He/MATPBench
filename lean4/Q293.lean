import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real 
theorem inscribedConeInCylinderVolume :
  ∃ (r h : ℝ),
    0 < r ∧
    0 < h ∧
    (Real.pi * r^2 * h = 72 * Real.pi) ∧
    (Real.pi * r^2 * h - (1/3) * Real.pi * r^2 * h = 48 * Real.pi) := by sorry