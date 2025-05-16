import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Sqrt

open EuclideanGeometry

/--
Let P be a Euclidean space over ℝ, and let A, B, C : P be points such that:
- dist B A = 6
- dist C A = x
- dist B C = x
- ∠ B A C = π / 4
- ∠ C B A = π / 4
- ∠ A C B = π / 2
- A, B, C are not collinear

Then x = 3 * Real.sqrt 2.
-/
theorem triangle_isosceles_right_x_value
    {P : Type*} [EuclideanSpace ℝ P]
    (A B C : P)
    (x : ℝ)
    (h_dist_BA : dist B A = 6)
    (h_dist_CA : dist C A = x)
    (h_dist_CB : dist B C = x)
    (h_angle_BAC : Angle.value (∠ B A C) = Real.pi / 4)
    (h_angle_CBA : Angle.value (∠ C B A) = Real.pi / 4)
    (h_angle_ACB : Angle.value (∠ A C B) = Real.pi / 2)
    (h_not_collinear : ¬ Collinear ℝ A B C)
    : x = 3 * Real.sqrt 2 := by
  sorry