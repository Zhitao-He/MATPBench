import Mathlib.Data.Real.Basic 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace HollowCylinderProblem
def outerRadius : ℝ := 11  
def innerRadius : ℝ := 10  
def height : ℝ := 24     
noncomputable def totalSurfaceArea (R r h : ℝ) : ℝ :=
  (2 * Real.pi * R * h) +    
  (2 * Real.pi * r * h) +    
  (2 * Real.pi * (R^2 - r^2)) 
noncomputable def calculatedSurfaceArea : ℝ :=
  totalSurfaceArea outerRadius innerRadius height
def claimedSurfaceAreaValue : ℝ := 329867
noncomputable def roundToTwoDecimalPlaces (x : ℝ) : ℝ :=
  sorry
noncomputable def calculatedSurfaceAreaRounded : ℝ :=
  roundToTwoDecimalPlaces calculatedSurfaceArea
theorem surfaceAreaClaim : calculatedSurfaceAreaRounded = claimedSurfaceAreaValue := by
  sorry
end HollowCylinderProblem
