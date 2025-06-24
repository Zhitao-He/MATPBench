import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
noncomputable def frustumVolume (R r h : ℝ) : ℝ :=
  (1 / 3 : ℝ) * Real.pi * h * (R ^ 2 + R * r + r ^ 2)
theorem specific_frustum_volume_calculation :
    frustumVolume 8 4 6 = 224 * Real.pi := by
  sorry
