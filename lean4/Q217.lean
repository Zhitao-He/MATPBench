import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace RightTriangleProblem
def givenAngleDegrees : ℝ := 43
def givenAdjacentSide : ℝ := 20
noncomputable def degreesToRadians (deg : ℝ) : ℝ := deg * (Real.pi / 180)
noncomputable def h : ℝ := givenAdjacentSide * Real.tan (degreesToRadians givenAngleDegrees)
noncomputable def roundToNearestNat (x : ℝ) : ℕ := Nat.floor (x + 0.5)
theorem h_rounded_is_19 : roundToNearestNat h = 19 := by sorry
end RightTriangleProblem
