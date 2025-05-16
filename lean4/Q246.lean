import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 

def radius : ℝ := 5.0
def height : ℝ := 15.0


noncomputable def cylinderVolume (r h : ℝ) : ℝ := Real.pi * r ^ 2 * h


noncomputable def semicylinderVolume (r h : ℝ) : ℝ := (1 / 2) * cylinderVolume r h


noncomputable def roundToTwoDecimalPlaces (x : ℝ) : ℝ :=
  (round (x * 100.0)) / 100.0


theorem problem_semicylinder_volume :
  roundToTwoDecimalPlaces (semicylinderVolume radius height) = 88357 := by
  sorry
