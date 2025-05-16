import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Sqrt

namespace ProblemFormalization

open EuclideanGeometry Real

theorem find_value_of_x
    (A B C : EuclideanPlane ℝ)
    (h_AC : dist A C = 5)
    (h_angle_BAC : angle C A B = π / 3)
    (h_AC_perp_BC : angle A C B = π / 2) :
    dist B C = 5 * Real.sqrt 3 := by
  sorry

end ProblemFormalization