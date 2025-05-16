import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic



def beltProblemRadius : ℝ := 10


noncomputable def beltProblemBeltLength (r : ℝ) : ℝ := 6 * r + 2 * Real.pi * r


theorem beltProblemTheorem :
    ∃ (a b : ℝ),
      beltProblemBeltLength beltProblemRadius = a + b * Real.pi ∧
      a + b = 80 :=
by sorry
