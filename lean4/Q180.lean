import Mathlib.Data.Real.Basic

theorem shadedFigure_area :
    let rectLength : ℝ := 20
    let rectWidth : ℝ := 15
    let triBase : ℝ := 8
    let triHeight : ℝ := 15
    let rectArea := rectLength * rectWidth
    let triArea := (triBase * triHeight) / 2
    let totalArea := rectArea + triArea
    Real.round (totalArea * 10) / 10 = 420 := 
  by sorry