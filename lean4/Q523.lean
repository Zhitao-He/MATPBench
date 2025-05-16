import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic

variable {P : Type*} [EuclideanSpace ℝ P]

variable (d e f g h : P)

axiom length_FE : dist f e = 6
axiom length_FG : dist f g = 3
axiom length_FH : dist f h = 4
axiom length_HG : dist h g = 2

axiom similarity_DEF_GFH : Triangle.IsSimilar (Triangle.mk d e f) (Triangle.mk g f h)

theorem perimeter_triangle_DEF_is_27_div_2 :
    Triangle.perimeter (Triangle.mk d e f) = 27 / 2 := by sorry