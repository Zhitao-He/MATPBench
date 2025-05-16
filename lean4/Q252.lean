import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-
A cylinder has a surface area of 54105 mm² and diameter 79 mm.
Is the height, when rounded to the nearest whole number, 30 mm?
-/

-- Given values
def cylinderRadius : ℝ := 79 / 2
def cylinderSurfaceArea : ℝ := 54105

-- Surface area formula for a closed cylinder:
-- S = 2 * π * r^2 + 2 * π * r * h
-- Solve for h:
def cylinderHeight (S r : ℝ) : ℝ :=
  (S - 2 * Real.pi * r ^ 2) / (2 * Real.pi * r)

def computedHeight : ℝ :=
  cylinderHeight cylinderSurfaceArea cylinderRadius

theorem roundedHeight_is_30 :
    Real.round computedHeight = 30 := by sorry