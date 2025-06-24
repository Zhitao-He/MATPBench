import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
theorem shaded_sector_angle_is_72_degrees
    (r : ℝ) 
    (x : ℝ) 
    (hr_pos : 0 < r) 
    (hx_range : 0 < x ∧ x ≤ 360) 
    (h_area : 
      let area_circle := Real.pi * r^2
      let area_sector := (x / 360) * area_circle
      area_sector = (20 / 100 : ℝ) * area_circle)
    : x = 72 :=
  by sorry