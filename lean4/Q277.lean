import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds


def lengthRect : ℝ := 6
def widthRect : ℝ := 5
def heightWaterInRect : ℝ := 4
def radiusCyl : ℝ := 3


theorem waterLevelRiseApproximation :
  ∀ (hInitial xRise : ℝ),
    0 < hInitial →
    0 < xRise →
    lengthRect * widthRect * heightWaterInRect = Real.pi * radiusCyl ^ 2 * xRise →
    |xRise - 42| < |xRise - 3| ∧
    |xRise - 42| < |xRise - 34| ∧
    |xRise - 42| < |xRise - 38| := by
  sorry