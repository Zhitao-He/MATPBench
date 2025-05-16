import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

open EuclideanGeometry
open scoped RealInnerProductSpace

theorem length_AB_sqrt34 :
  ∃ (A B C : EuclideanSpace ℝ (Fin 2)),
    dist A C = 5 ∧
    dist B C = 3 ∧
    ⟪A - C, B - C⟫_ℝ = 0 ∧
    dist A B = Real.sqrt 34 := by
  sorry