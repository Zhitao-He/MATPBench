import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace SemicircleProblem



def legA : ℝ := 6
def legB : ℝ := 8

noncomputable def hypotenuse : ℝ := Real.sqrt (legA ^ 2 + legB ^ 2)


noncomputable def semicircleArea (d : ℝ) : ℝ :=
  Real.pi * (d / 2) ^ 2 / 2


theorem totalCrescentArea :
    semicircleArea legA + semicircleArea legB - semicircleArea hypotenuse = 24 :=
  by sorry

end SemicircleProblem
