import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry
open Real


abbrev PPoint := EuclideanSpace ℝ (Fin 2)


theorem value_of_x_is_2_sqrt_66
    (A B C D : PPoint)
    (hAD : dist A D = 8)
    (hBD : dist B D = 25)
    (hACB : ∠ A C B = π / 2)
    (hADB : ∠ A D B = π / 2) :
    dist A C = 2 * sqrt 66 := by
  sorry
