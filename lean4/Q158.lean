import Mathlib.Data.Real.Basic
namespace ShadedRegionArea
def width : ℝ := 10.8        
def vert : ℝ := 9.2          
def arm : ℝ := 3.1           
def outerRectArea : ℝ := width * (vert + arm)
def cutoutRectArea : ℝ := vert * arm
def innerSquareArea : ℝ := arm * arm
def shadedArea : ℝ := outerRectArea - cutoutRectArea - innerSquareArea
def target : ℝ := 1085.0
theorem shaded_area_rounded_to_tenth :
    abs (shadedArea - target) ≤ 0.05 :=
by sorry
end ShadedRegionArea