import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace CompositeFigureProblem
def radius : ℝ := 4
def coneHeight : ℝ := 10
noncomputable def slantHeight : ℝ :=
  Real.sqrt (radius ^ 2 + coneHeight ^ 2)
noncomputable def coneLateralArea : ℝ :=
  Real.pi * radius * slantHeight
noncomputable def hemisphereArea : ℝ :=
  2 * Real.pi * radius ^ 2
noncomputable def totalSurfaceArea : ℝ :=
  coneLateralArea + hemisphereArea
noncomputable def roundToNDecimals (x : ℝ) (n : ℕ) : ℝ :=
  let factor := (10 : ℝ) ^ n
  ↑(round (x * factor)) / factor
def statedValue : ℝ := 23587.00
theorem surface_area_correct :
  roundToNDecimals totalSurfaceArea 2 = 235.87 := by sorry
end CompositeFigureProblem
