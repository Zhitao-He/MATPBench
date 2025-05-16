import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real

def bigRadius : ℝ := 6
def smallRadius : ℝ := 3


noncomputable def semicircleArea (r : ℝ) : ℝ := (Real.pi * r ^ 2) / 2



noncomputable def plateArea : ℝ := 2 * semicircleArea bigRadius - 2 * semicircleArea smallRadius


def targetArea : ℝ := 7069
def tolerance : ℝ := 0.005  


theorem jewelleryPlateAreaAssertion :
  |plateArea - targetArea| ≤ tolerance := by sorry
