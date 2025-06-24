import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open scoped BigOperators 
namespace SpiralPattern
def numLayers : ℕ := 6
@[simp]
noncomputable def D (j : ℕ) : ℝ := 
  if 1 ≤ j ∧ j ≤ numLayers then
    ↑(2 * j - 1)
  else
    0
@[simp]
noncomputable def semicircleArea (diameter : ℝ) : ℝ :=
  if diameter < 0 then 0 else Real.pi * diameter^2 / 8
noncomputable def shadedRegionArea (j : ℕ) : ℝ :=
  if 1 ≤ j ∧ j ≤ numLayers then
    if j = 1 then
      semicircleArea (D 1)
    else
      semicircleArea (D j) - semicircleArea (D (j-1))
  else
    0
noncomputable def totalShadedArea : ℝ :=
  ∑ j ∈ Finset.Icc 1 numLayers, shadedRegionArea j
noncomputable def k : ℝ := totalShadedArea * 8 / Real.pi
theorem k_value_is_121 : k = 121 := by sorry
end SpiralPattern
