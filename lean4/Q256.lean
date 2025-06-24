import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
def imgBoxLength : ℝ := 33
def imgBoxWidth : ℝ := 25
def imgBoxHeight : ℝ := 20
def imgCylinderRadius : ℝ := 6
def imgCylinderHeight : ℝ := 11 
def scaleFactor : ℝ := 10
def boxLength : ℝ := scaleFactor * imgBoxLength
def boxWidth : ℝ := scaleFactor * imgBoxWidth
def boxHeight : ℝ := scaleFactor * imgBoxHeight
def cylinderRadius : ℝ := scaleFactor * imgCylinderRadius
def cylinderHeight : ℝ := scaleFactor * imgCylinderHeight
def cuboidSurfaceArea (length width height : ℝ) : ℝ :=
  2 * (length * width + length * height + width * height)
noncomputable def circleArea (radius : ℝ) : ℝ :=
  Real.pi * radius * radius
noncomputable def cylinderLateralSurfaceArea (radius height : ℝ) : ℝ :=
  2 * Real.pi * radius * height
noncomputable def solidSurfaceArea : ℝ :=
  (2 * cuboidSurfaceArea boxLength boxWidth boxHeight) -
  (2 * circleArea cylinderRadius) +
  (cylinderLateralSurfaceArea cylinderRadius cylinderHeight)
noncomputable def roundToTwoDecimalPlaces (x : ℝ) : ℝ :=
  sorry
theorem surfaceAreaIsClaimedValue : roundToTwoDecimalPlaces solidSurfaceArea = (812850 : ℝ) := by
  sorry
