import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
theorem conicalPaperCapPerimeter :
    let r : ℝ := 6.0
    let θ_deg : ℝ := 120.0
    let θ_rad : ℝ := θ_deg * (Real.pi / 180)
    let arcLength : ℝ := r * θ_rad
    arcLength = 4 * Real.pi :=
  by sorry