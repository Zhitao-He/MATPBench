import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace SphericalBallProblem

open Real


noncomputable def surfaceAreaOfSphere (radius : ℝ) : ℝ := 4 * π * radius ^ 2


def sphereRadius : ℝ := 2.5


noncomputable def roundToOneDecimalPlace (x : ℝ) : ℝ := (round (x * 10)) / 10


theorem surfaceAreaRoundedCorrectToOneDecimalPlace :
    roundToOneDecimalPlace (surfaceAreaOfSphere sphereRadius) = 78.5 := by sorry

end SphericalBallProblem
