import Mathlib.Data.Real.Basic
theorem triangularPrismSurfaceArea_eq_768 :
  let baseLength : ℝ := 12
  let triangleHeight : ℝ := 8
  let triangleSide : ℝ := 10
  let prismLength : ℝ := 21
  let baseTriangleArea : ℝ := (1 / 2) * baseLength * triangleHeight
  let lateralFaceOnBase : ℝ := baseLength * prismLength
  let lateralFaceOnSide1 : ℝ := triangleSide * prismLength
  let lateralFaceOnSide2 : ℝ := triangleSide * prismLength
  let totalSurfaceArea : ℝ :=
    2 * baseTriangleArea +
    lateralFaceOnBase +
    lateralFaceOnSide1 +
    lateralFaceOnSide2
  totalSurfaceArea = 768 := by
  sorry