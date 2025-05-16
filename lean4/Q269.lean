import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt




def baseLength : ℝ := 12
def legLength : ℝ := 10
def prismLength : ℝ := 16


noncomputable def triangleHeight : ℝ := Real.sqrt (legLength ^ 2 - (baseLength / 2) ^ 2)


noncomputable def triangleArea : ℝ := (baseLength * triangleHeight) / 2


noncomputable def lateralArea : ℝ := (baseLength + 2 * legLength) * prismLength


noncomputable def totalSurfaceArea : ℝ := 2 * triangleArea + lateralArea

theorem prismSurfaceAreaIs608 : totalSurfaceArea = 608 := by sorry
