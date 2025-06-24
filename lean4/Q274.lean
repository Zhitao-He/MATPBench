import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
namespace WeddingCake
def rTop : ℝ := 20
def hTop : ℝ := 20
def hMiddle : ℝ := 20
def hBottom : ℝ := 40
def rMiddle : ℝ := 2 * rTop
def rBottom : ℝ := 3 * rTop
def cylinderLateralSurfaceArea (radius height : ℝ) : ℝ :=
  sorry
def circleArea (radius : ℝ) : ℝ :=
  sorry
def topLayerLateralArea : ℝ :=
  cylinderLateralSurfaceArea rTop hTop
def topLayerTopSurfaceArea : ℝ :=
  circleArea rTop
def middleLayerLateralArea : ℝ :=
  cylinderLateralSurfaceArea rMiddle hMiddle
def middleLayerExposedTopSurfaceArea : ℝ :=
  circleArea rMiddle - circleArea rTop
def bottomLayerLateralArea : ℝ :=
  cylinderLateralSurfaceArea rBottom hBottom
def bottomLayerExposedTopSurfaceArea : ℝ :=
  circleArea rBottom - circleArea rMiddle
def totalIcedSurfaceArea : ℝ :=
  topLayerLateralArea +
  topLayerTopSurfaceArea +
  middleLayerLateralArea +
  middleLayerExposedTopSurfaceArea +
  bottomLayerLateralArea +
  bottomLayerExposedTopSurfaceArea
theorem calculatedSurfaceAreaRounded : (sorry : ℤ) = 33929 :=
  by sorry
end WeddingCake
