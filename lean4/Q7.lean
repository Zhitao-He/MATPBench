import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Calculus.Deriv.Basic


def f (x : ℝ) : ℝ := |2 * x - 3| + 1


theorem derivative_equality : deriv f 2 = deriv f 5 := by sorry