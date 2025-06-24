import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace CylinderProblem
def radius : ℝ := 98
def height : ℝ := 80
noncomputable def surfaceArea (r h : ℝ) : ℝ :=
  2 * Real.pi * r * h + 2 * Real.pi * (r ^ 2)
noncomputable def calculatedSurfaceArea : ℝ := surfaceArea radius height
noncomputable def roundToDecimalPlaces (x : ℝ) (n : Nat) : ℝ :=
  let factor : ℝ := (10 : ℝ) ^ n
  (round (x * factor)) / factor
def numDecimalPlaces : Nat := 2
noncomputable def roundedSurfaceArea : ℝ :=
  roundToDecimalPlaces calculatedSurfaceArea numDecimalPlaces
def claimedSurfaceAreaValue : ℝ := 109603.88
theorem surfaceAreaClaim : roundedSurfaceArea = claimedSurfaceAreaValue := by
  sorry
end CylinderProblem
