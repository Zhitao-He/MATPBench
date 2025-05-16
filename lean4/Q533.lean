import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open EuclideanGeometry

local notation "P" => EuclideanSpace ℝ (Fin 2)

theorem value_of_z_equals_6
    (A B C D : P)
    (x y z : ℝ)
    (h_AC : dist A C = x)
    (h_AD : dist A D = 4)
    (h_BC : dist B C = y)
    (h_BD : dist B D = 9)
    (h_CD : dist C D = z)
    (h_ACB_right : angle A C B = Real.pi / 2)
    (h_BDC_right : angle B D C = Real.pi / 2)
    (h_D_on_AB : D ∈ segment ℝ A B) :
    z = 6 := by
  sorry
