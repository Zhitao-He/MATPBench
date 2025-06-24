import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open Real EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem value_of_CF_in_right_triangle :
    ∀ (C B F : Point),
      dist C B = 8 →
      dist F B = 15 →
      ∠ B C F = π / 2 →
      dist C F = sqrt 161 :=
  by sorry
