import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
namespace SphereInCube


def edgeLength : ℝ := 30


def volumeCube : ℝ := edgeLength ^ 3


noncomputable def radiusSphere : ℝ := edgeLength / 2


noncomputable def volumeSphere : ℝ := (4 / 3) * Real.pi * radiusSphere ^ 3


noncomputable def unoccupiedVolume : ℝ := volumeCube - volumeSphere


theorem unoccupied_volume_eq_expected :
    unoccupiedVolume = 27000 - 4500 * Real.pi := by
  sorry

end SphereInCube
