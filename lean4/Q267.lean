import Mathlib.Data.Real.Basic
theorem trapezoidalPrism_surface_area :
  let a := (10 : ℝ)
  let b := (18 : ℝ)
  let h := (3 : ℝ)
  let s₁ := (5 : ℝ)
  let s₂ := (8 : ℝ)
  let L := (5 : ℝ)
  let area_trapezoid_base := (a + b) * h / 2
  let total_surface_area := 2 * area_trapezoid_base + (a + b + s₁ + s₂) * L
  total_surface_area = 338 := by
    sorry