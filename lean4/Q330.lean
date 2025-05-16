import Mathlib.Data.Real.Basic


def piApprox : ℝ := 3.14


def radius1 : ℝ := 2     
def radius2 : ℝ := 4     
def radius3 : ℝ := 6     
def radius4 : ℝ := 8     


def semicircleArea (r : ℝ) : ℝ :=
  0.5 * piApprox * r ^ 2


def totalShadedArea : ℝ :=
  (semicircleArea radius4 - semicircleArea radius3) +
  (semicircleArea radius2 - semicircleArea radius1)


theorem shadedAreaValue : |totalShadedArea - 62.8| < 0.05 := by
  sorry