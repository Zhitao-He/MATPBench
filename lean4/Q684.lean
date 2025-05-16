import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry


theorem value_of_BC_is_sqrt_231
    (A B C : EuclideanSpace ℝ (Fin 2))
    (h_AB : dist A B = 16)
    (h_AC : dist A C = 5)
    (h_right : ∠ A C B = Real.pi / 2) :
    dist B C = Real.sqrt 231 := by sorry
