import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

namespace ProblemFormalization

/--
There exist points A, B, C in the real Euclidean plane such that
the sine of the (unoriented) angle ABC equals 12/13.
-/
theorem exists_points_with_sin_angle_ABC_12_div_13 :
    ∃ (A B C : EuclideanPlane ℝ),
      Real.Angle.sin (∠ A B C) = (12 / 13 : ℝ) := by
  sorry

end ProblemFormalization