import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

-- 'a' and 'b' are the legs of a right triangle.
def a : ℝ := 3
def b : ℝ := 12

-- The hypotenuse 'z' of the right triangle.
def z : ℝ := Real.sqrt (a ^ 2 + b ^ 2)

-- The claim to prove: z = 6 * √5
theorem z_eq_6_sqrt_5 : z = 6 * Real.sqrt 5 := by
  sorry