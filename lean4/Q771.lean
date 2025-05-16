import Mathlib.Data.Real.Basic

/-!
  Problem statement:
  Given a parallelogram AYBC with the following side lengths:
    AC = 5 * y
    AY = 2 * x - 5
    CB = 3 * x - 18
    YB = 2 * y + 12
  The quadrilateral AYBC is a parallelogram.
  Find the value of y. (The normalized answer is y = 4)
-/

variable (x y : ℝ)

/-- Definitions of the side lengths as real expressions -/
def lengthAC : ℝ := 5 * y
def lengthAY : ℝ := 2 * x - 5
def lengthCB : ℝ := 3 * x - 18
def lengthYB : ℝ := 2 * y + 12

/--
  In parallelogram AYBC, opposite sides are equal:
    AY = CB
    AC = YB
  Given these equations, prove y = 4.
-/
theorem parallelogram_determine_y
  (h₁ : lengthAY x y = lengthCB x y)
  (h₂ : lengthAC x y = lengthYB x y) :
  y = 4 := by
  sorry