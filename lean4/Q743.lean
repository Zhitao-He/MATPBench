import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry

abbrev PPoint := EuclideanSpace ℝ (Fin 2)

theorem triangle_CAB_tan_value :
  let a : ℝ := 14
  let b : ℝ := 48
  let c : ℝ := 50
  let C : PPoint := ![0, 0]
  let A : PPoint := ![b, 0]
  let B : PPoint := ![0, a]
  dist C A = b ∧
  dist C B = a ∧
  dist A B = c ∧
  angle B C A = π / 2 ∧
  tan (angle C A B) = 7 / 24 := by sorry