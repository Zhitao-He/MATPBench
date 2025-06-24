import Mathlib.Data.Real.Basic 
def estebanSlope : ℝ := 10.0
def estebanIntercept : ℝ := 92.9
def annaSlope : ℝ := 9.0
def annaIntercept : ℝ := 100.0
def estebanBalance (t : ℝ) : ℝ := estebanSlope * t + estebanIntercept
def annaBalance (t : ℝ) : ℝ := annaSlope * t + annaIntercept
noncomputable def timeWhenBalancesAreEqual : ℝ :=
  (annaIntercept - estebanIntercept) / (estebanSlope - annaSlope)
theorem accountBalanceProblem :
  estebanBalance timeWhenBalancesAreEqual = annaBalance timeWhenBalancesAreEqual ∧
  (sorry : ℤ) = (7 : ℤ) :=
  by sorry
