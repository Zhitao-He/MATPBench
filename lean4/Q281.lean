import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic 



namespace ShadedRings


def r₁ : ℝ := 1
def r₂ : ℝ := 2
def r₃ : ℝ := 3
def r₄ : ℝ := 4


noncomputable def areaAnnulus (R r : ℝ) : ℝ := Real.pi * (R^2 - r^2)


noncomputable def smallShadedRingArea : ℝ := areaAnnulus r₂ r₁


noncomputable def largeShadedRingArea : ℝ := areaAnnulus r₄ r₃


theorem ratio_of_shaded_ring_areas :
    smallShadedRingArea / largeShadedRingArea = 7 := by
  sorry

end ShadedRings
