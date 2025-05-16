import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

open Real

/--
Given points M, N, P in the Euclidean plane where:
- dist N M = 39
- dist P M = 36
- dist N P = 15
- Angle at P is right (MP ⟂ NP)
Then cos(∠NMP) = 12/13
-/
theorem cos_angle_NMP_eq_12_div_13
    (M N P : EuclideanSpace ℝ (Fin 2))
    (h_NM : dist N M = 39)
    (h_PM : dist P M = 36)
    (h_NP : dist N P = 15)
    (h_right_angle : Angle.unoriented M P N = π / 2) :
    Real.cos (Angle.unoriented N M P) = 12 / 13 := by
  sorry