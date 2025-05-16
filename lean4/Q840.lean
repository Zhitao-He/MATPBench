import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Sqrt

namespace Lean4GeomProblem

variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]

/--
Let A, B, C be three points in a 2D Euclidean space such that:
- The distance between A and B is 18,
- The (unoriented) angle BAC is π/4 (45 degrees),
- The (unoriented) angle ACB is π/2 (90 degrees), with C ≠ A and B ≠ C.
Then, the distance between B and C is 9 * sqrt 2.
-/
theorem value_of_x_is_nine_sqrt_two
    (A B C : P)
    (h_AB_dist : dist A B = 18)
    (h_angle_BAC : ∠ B A C = Real.pi / 4)
    (h_angle_ACB : ∠ A C B = Real.pi / 2)
    (h_C_ne_A : C ≠ A)
    (h_B_ne_C : B ≠ C)
    : dist B C = 9 * Real.sqrt 2 :=
by sorry

end Lean4GeomProblem