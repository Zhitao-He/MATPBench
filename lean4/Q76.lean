import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic


noncomputable def area_quadrant_disk (r : ℝ) : ℝ := (1/4) * Real.pi * r^2


noncomputable def area_quadrant_annulus (r₁ r₂ : ℝ) : ℝ := (1/4) * Real.pi * (r₂^2 - r₁^2)


def Y_product (r₁ r₂ r₃ : ℝ) : ℝ := r₁ * r₂ * r₃

theorem product_of_radii_squared_eq_384
    (r₁ r₂ r₃ : ℝ)
    (h_r1_pos : 0 < r₁)
    (h_r1_lt_r2 : r₁ < r₂)
    (h_r2_lt_r3 : r₂ < r₃)
    (h_r1_val : r₁ = 2)
    (h_areas_equal :
      area_quadrant_disk r₁ = area_quadrant_annulus r₁ r₂ ∧
      area_quadrant_annulus r₁ r₂ = area_quadrant_annulus r₂ r₃)
    : (Y_product r₁ r₂ r₃)^2 = 384 := by
  sorry
