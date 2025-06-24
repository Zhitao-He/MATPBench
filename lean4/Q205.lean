import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace SectorConeProblem
def sectorRadius : ℝ := 24
def coneBaseRadius : ℝ := 10
noncomputable def circumference (radius : ℝ) : ℝ := 2 * Real.pi * radius
noncomputable def sectorArcLength : ℝ := circumference coneBaseRadius
noncomputable def areaOfSector (radius : ℝ) (arcLength : ℝ) : ℝ := radius * arcLength / 2
noncomputable def areaOfThisSectorCardboard : ℝ := areaOfSector sectorRadius sectorArcLength
theorem areaOfSectorIs240Pi : areaOfThisSectorCardboard = 240 * Real.pi := by
  sorry
end SectorConeProblem
