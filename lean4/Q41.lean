import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

open Real
open scoped EuclideanGeometry

namespace Problem

-- Formalization of the circle-tangent geometry problem.
variable {P : Type*} [EuclideanSpace ℝ P]

/--
Let O be the center of a circle of radius 2.
Let A be a point on the circle, and B the other endpoint of the diameter through A (so O is the midpoint of AB).
Let C be a point on the extended line AB such that C, B, and A are collinear in order A-B-C, and B is between A and C (i.e. C = (1-t) • a + t • b, t > 1).
Let D be a point on the circle such that the line CD is tangent to the circle at D
(i.e. vector OD is perpendicular to CD at D).
Given that ∠DAC = π/6, then CD = 2 * sqrt 3.
-/
theorem circle_tangent_geometry
    (o a b c d : P)
    (h_oa : dist a o = 2)
    (h_od : dist d o = 2)
    (h_o_mid_ab : o = midpoint ℝ a b)
    (h_c_extension : ∃ (t : ℝ), t > 1 ∧ c = (1 - t) • a + t • b)
    (h_tangent : ⟪d -ᵥ o, c -ᵥ d⟫ = 0)
    (h_d_ne_a : d ≠ a)
    (h_angle : ∡ d a c = π / 6) :
    dist c d = 2 * sqrt 3 :=
  by
    sorry

end Problem