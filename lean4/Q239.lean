import Mathlib.Data.Real.Basic

namespace RectangleInscribedInParabola



def parabola (x : ℝ) : ℝ := 36 - x ^ 2

def rectWidth (x : ℝ) : ℝ := 2 * x

def rectHeight (x : ℝ) : ℝ := parabola x

def areaFromGeometry (x : ℝ) : ℝ := rectWidth x * rectHeight x

def areaAsGivenFormula (x : ℝ) : ℝ := 72 * x - 2 * x ^ 3

theorem area_matches_formula (x : ℝ) (hx₀ : 0 < x) (hx₁ : x ≤ 6) :
    areaFromGeometry x = areaAsGivenFormula x := by
  
  sorry

end RectangleInscribedInParabola