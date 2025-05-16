import Mathlib.Data.Real.Basic

theorem rightHexagonalPrismLateralArea :
  let height : ℝ := 3        
  let baseEdgeInches : ℝ := 6
  let baseEdgeFeet : ℝ := baseEdgeInches / 12  
  let numLateralFaces : ℝ := 6
  let totalLateralArea : ℝ := numLateralFaces * baseEdgeFeet * height
  totalLateralArea = 9 := by sorry