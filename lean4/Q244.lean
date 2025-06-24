import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
theorem cylindrical_pipe_weight_calculation :
  let outerRadius : ℝ := 2.1   
  let innerRadius : ℝ := 1.8   
  let length : ℝ := 13         
  let density : ℝ := 53        
  let volume : ℝ := Real.pi * (outerRadius ^ 2 - innerRadius ^ 2) * length
  let weight : ℝ := density * volume
  632.95 ≤ weight ∧ weight ≤ 633.05 := by sorry
