import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace SectorProblem


def arcLength (r θ : ℝ) : ℝ := r * θ


def sectorPerimeter (r θ : ℝ) : ℝ := 2 * r + arcLength r θ



theorem sector_perimeter_12_radius_24_plus_4pi :
  let r := (12 : ℝ)
  let θ := Real.pi / 3
  sectorPerimeter r θ = 24 + 4 * Real.pi / 3 := by
  sorry

end SectorProblem