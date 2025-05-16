import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

theorem height_of_tower_problem :
  ∃ h : ℝ,
    let d := (29 : ℝ)
    let theta1 := 10 * Real.pi / 180
    let theta2 := 22 * Real.pi / 180
    (h = d * (Real.tan theta2 * Real.tan theta1) / (Real.tan theta2 - Real.tan theta1))
    ∧ (Real.round h = 9) := by sorry