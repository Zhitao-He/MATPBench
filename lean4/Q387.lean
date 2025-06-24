import Mathlib.Data.Real.Basic
theorem aluminumContainerCost :
  let length : ℝ := 10
  let width : ℝ := 10
  let height : ℝ := 12
  let costPerSqInch : ℝ := 0.05
  let surfaceArea : ℝ := 2 * (length * width + length * height + width * height)
  let totalCost : ℝ := costPerSqInch * surfaceArea
  totalCost = 34 := by sorry