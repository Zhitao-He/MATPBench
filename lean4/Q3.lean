import Mathlib.Data.Real.Basic

theorem pentagonAngleH (x : ℝ) :
  let angleE := x
  let angleF := x + 20
  let angleG := x + 5
  let angleH := x - 5
  let angleJ := x + 10
  (angleE + angleF + angleG + angleH + angleJ = 540) →
  angleH = 97 := by sorry