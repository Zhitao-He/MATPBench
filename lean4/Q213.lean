import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace ProblemFormalization

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [Fact (finrank ℝ P = 2)]

/--
Let ABC be a triangle in Euclidean plane P, with AB = AC = 3,
the angle at A and at B are both 2x degrees.
Then, x = 30.
-/
theorem find_x_value_in_isosceles_triangle
    (A B C : P) (x : ℝ)
    (h_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
    (h_AB_eq_3 : dist A B = 3)
    (h_AC_eq_3 : dist A C = 3)
    (h_angle_A : ∠ B A C = (2 * x) * (Real.pi / 180))
    (h_angle_B : ∠ A B C = (2 * x) * (Real.pi / 180))
    : x = 30 := by sorry

end ProblemFormalization