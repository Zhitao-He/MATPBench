import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic

open Real

abbrev EucPlane := EuclideanSpace ℝ (Fin 2)

theorem building_height_problem :
  ∀ (A B T : EucPlane) (d : ℝ),
  -- Coordinates definitions
  (A 0 = 0 ∧ T 0 = d ∧ B 0 = d) →
  -- Horizontal distance is 120
  d = 120 →
  -- Angle conditions
  (T 1 - A 1) / d = tan (π / 6) →
  (A 1 - B 1) / d = tan (π / 3) →
  -- Conclusion: building height is 160√3
  T 1 - B 1 = 160 * sqrt 3 :=
by sorry