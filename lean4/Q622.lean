import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle

open Real EuclideanGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAffineSpace V P]

/--
Given triangle ABC in a Euclidean affine space such that |AB| = 3, |AC| = 3, |BC| = 4*y - 5,
and angles ∠BAC = 2x°, ∠CBA = 2x°, then y = 2.
-/
theorem find_y_value
    (A B C : P)
    (y x_deg : ℝ)
    (h_dist_AB : dist A B = 3)
    (h_eq_sides : dist A C = dist A B)
    (h_dist_BC_expr : dist B C = 4 * y - 5)
    (h_angle_BAC : angle C A B = (2 * x_deg / 180) * π)
    (h_angle_ABC : angle A B C = (2 * x_deg / 180) * π)
    (h_A_ne_B : A ≠ B) (h_A_ne_C : A ≠ C) (h_B_ne_C : B ≠ C)
    (h_dist_BC_pos : 4 * y - 5 > 0)
    (h_x_deg_pos : x_deg > 0)
    (h_x_deg_lt_90 : x_deg < 90)
    : y = 2 := by
  sorry