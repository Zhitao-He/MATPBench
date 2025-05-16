import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace HollowCylinderProblem

/-!
Formalization of a hollow cylinder with:
- inner radius = 10 cm
- outer radius = 11 cm
- height = 24 cm
The problem asserts the total surface area (rounded to two decimal places) is 329867 cm².
-/

def rInCm : ℝ := 10
def rOutCm : ℝ := 11
def hCm : ℝ := 24

/-- Total surface area of a hollow cylinder (cm²) -/
def totalSurfaceAreaHollowCylinder (rIn rOut h : ℝ) : ℝ :=
  2 * Real.pi * rOut * h +  -- Outer curved surface
  2 * Real.pi * rIn * h +   -- Inner curved surface
  2 * Real.pi * (rOut^2 - rIn^2)  -- Top and bottom annular rings

/-- Round a real number to `n` decimal places -/
def roundToDecimalPlaces (n : Nat) (x : ℝ) : ℝ :=
  Real.round (x * (10 : ℝ)^n) / (10 : ℝ)^n

def targetSACm2 : ℝ := 329867

/--
Theorem: The surface area, rounded to two decimal places, equals 329867 cm².
-/
theorem surfaceAreaVerification :
    roundToDecimalPlaces 2 (totalSurfaceAreaHollowCylinder rInCm rOutCm hCm) = targetSACm2 := by
  sorry

end HollowCylinderProblem