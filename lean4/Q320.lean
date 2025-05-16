import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
theorem shadedRegionAreaCalculation :
  let r : ℝ := 1
  let h_rect := 2 * r
  let w_rect := 4 * r
  let area_total_circles := 2 * (Real.pi * r ^ 2)
  let area_shaded := w_rect * h_rect - area_total_circles
  area_shaded = 8 - 2 * Real.pi := by
    sorry
