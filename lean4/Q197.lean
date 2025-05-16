import Mathlib.Data.Real.Basic


def squareSideLength : ℝ := 12


def squareArea : ℝ := squareSideLength ^ 2


def areaOfFirstCircledFigure : ℝ := by sorry
def areaOfSecondCircledFigure : ℝ := by sorry
def areaOfThirdCircledFigure : ℝ := by sorry


def sumOfCircledAreas : ℝ :=
  areaOfFirstCircledFigure + areaOfSecondCircledFigure + areaOfThirdCircledFigure


theorem sumOfCircledAreas_eq_36 : sumOfCircledAreas = 36 := by sorry