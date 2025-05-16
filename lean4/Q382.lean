import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

noncomputable def semicylinderTotalSurfaceArea (r h : ℝ) : ℝ :=
  Real.pi * r * h + Real.pi * r * r + 2 * r * h

theorem surface_area_of_solid :
    semicylinderTotalSurfaceArea 6 10 = 96 * π + 120 := by sorry
