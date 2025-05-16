import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

noncomputable section


def radius : ℝ := 10.5 / 2


def height : ℝ := 33.1



def totalSurfaceArea : ℝ := 2 * Real.pi * radius * height + 3 * Real.pi * radius^2

end noncomputable section

theorem surface_area_hemisphere_cylinder : abs (totalSurfaceArea - 322280) ≤ 0.005 := by sorry