import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic


def radius : ℝ := 3


noncomputable def perimeterOfCircle (r : ℝ) : ℝ := 2 * Real.pi * r


theorem perimeter_eq_6pi : perimeterOfCircle radius = 6 * Real.pi := by sorry