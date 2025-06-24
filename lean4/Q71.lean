import Mathlib.Data.Real.Basic
def pentagonPerimeter : ℝ := 65
def pentagonSides : ℕ := 5
noncomputable def pentagonSideLength : ℝ := pentagonPerimeter / pentagonSides
def innerPolygonSides : ℕ := 10
noncomputable def innerPolygonSideLength : ℝ := pentagonSideLength
noncomputable def P : ℝ := innerPolygonSides * innerPolygonSideLength
theorem P_equals_130 : P = 130 := by
  sorry
