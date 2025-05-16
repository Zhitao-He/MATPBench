import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

open scoped EuclideanGeometry

abbrev P := EuclideanSpace ℝ (Fin 2)


theorem triangle_midsegment_length
    (A B C D E : P)
    (hD : D = midpoint ℝ A B)
    (hE : E = midpoint ℝ A C)
    (hBC : dist B C = 6) :
    dist D E = 3 := by
  sorry
