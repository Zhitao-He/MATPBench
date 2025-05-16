import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

-- We work in the Euclidean plane over ℝ
abbrev P := EuclideanGeometry.EuclideanSpace.Point (EuclideanPlane ℝ)

theorem triangle_side_length_value
    (A B C : P)
    (a : ℝ)
    (h_ab_length : dist A B = 8)
    (h_ca_length : dist C A = 10)
    (h_cb_length : dist C B = a)
    (h_angle_bac : EuclideanGeometry.Angle.angle B A C = Real.pi / 3)
    (h_a_pos : 0 < a) :
    a = 2 * Real.sqrt 21 := by
  sorry