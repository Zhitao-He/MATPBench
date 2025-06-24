import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real 
namespace ShadedFigure
def rectangleWidth : ℝ := 20
def rectangleHeight : ℝ := 15
def trianglePerpendicularHeight : ℝ := 8
abbrev P₂ := EuclideanSpace ℝ (Fin 2)
noncomputable def pA : P₂ := ![0, 0]
noncomputable def pB : P₂ := ![rectangleWidth, 0]
noncomputable def pC : P₂ := ![rectangleWidth, rectangleHeight]
noncomputable def pD : P₂ := ![0, rectangleHeight]
noncomputable def pE : P₂ := ![rectangleWidth + trianglePerpendicularHeight, rectangleHeight / 2]
noncomputable def triangleArea (p₁ p₂ p₃ : P₂) : ℝ :=
  (1/2 : ℝ) * abs ( (p₁ 0 * (p₂ 1 - p₃ 1)) + (p₂ 0 * (p₃ 1 - p₁ 1)) + (p₃ 0 * (p₁ 1 - p₂ 1)) )
noncomputable def areaFormulaRectangle (width height : ℝ) : ℝ := width * height
noncomputable def actualRectangleArea : ℝ := areaFormulaRectangle rectangleWidth rectangleHeight
noncomputable def actualTriangleArea : ℝ := triangleArea pB pC pE
noncomputable def actualShadedFigureArea : ℝ := actualRectangleArea + actualTriangleArea
noncomputable def roundToNearestTenth (x : ℝ) : ℝ := round (x * 10) / 10
def claimedRoundedAreaValue : ℝ := 420
theorem problem_goal_to_prove : roundToNearestTenth actualShadedFigureArea = claimedRoundedAreaValue := by
  sorry
end ShadedFigure
