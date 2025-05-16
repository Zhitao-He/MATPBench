import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds

namespace ShadedRegionProblem

-- Rectangle dimensions
def rectWidth : ℝ := 10
def rectHeight : ℝ := 5

-- Each circle fits vertically within the rectangle
def circleRadius : ℝ := rectHeight / 2

-- Areas calculation
def rectangleArea : ℝ := rectWidth * rectHeight
def singleCircleArea : ℝ := Real.pi * (circleRadius ^ 2)
def shadedArea : ℝ := rectangleArea - 2 * singleCircleArea

-- Rounding to the nearest tenth
def roundToNearestTenth (x : ℝ) : ℝ := (x * 10).round / 10

-- Formalized statement
theorem shadedArea_rounded_statement : roundToNearestTenth shadedArea = 107 := by
  sorry

end ShadedRegionProblem