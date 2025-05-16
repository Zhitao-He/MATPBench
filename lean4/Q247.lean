import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

def halfConeBaseRadius : ℝ := 3


def halfConeHeight : ℝ := 9


noncomputable def volumeHalfCone (r h : ℝ) : ℝ :=
  (1 / 6) * Real.pi * r ^ 2 * h


noncomputable def roundToTwoDecimalPlaces (x : ℝ) : ℝ :=
  (round (x * 100)) / 100


theorem halfConeVolumeValue :
    roundToTwoDecimalPlaces (volumeHalfCone halfConeBaseRadius halfConeHeight) = 1045 := by
  sorry
