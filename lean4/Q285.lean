import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace FloorTileProblem
def smallestRadius : ℝ := 2
def radiusIncrement : ℝ := 2
def numberOfSectors : ℕ := 12
def innerRadius : ℝ := smallestRadius
def outerRadius : ℝ := smallestRadius + radiusIncrement
noncomputable def centralAngle : ℝ := (2 * Real.pi) / numberOfSectors
noncomputable def areaOfShadedRegion : ℝ :=
  (centralAngle / 2) * (outerRadius ^ 2 - innerRadius ^ 2)
theorem shaded_region_area_eq_pi : areaOfShadedRegion = Real.pi := by
  sorry
end FloorTileProblem
