import Mathlib.Data.Real.Basic



noncomputable def lengthFN (x : ℝ) : ℝ := (1/4 : ℝ) * x + 6
def lengthNA (x : ℝ) : ℝ := 2 * x - 29
def lengthPD (y : ℝ) : ℝ := 16 - 5 * y
def lengthPI (y : ℝ) : ℝ := 12 - 3 * y

theorem geometryParallelogramXValue
  (x y : ℝ)
  (h₁ : lengthPI y = lengthFN x)  
  (h₂ : lengthPD y = lengthNA x)  
  : x = 20 :=
by sorry
