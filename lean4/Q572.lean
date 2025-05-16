import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

namespace RightTriangleAngleProblem

open Real EuclideanGeometry

-- Define the coordinates of the points Q, R, P in ℝ × ℝ
def Q : ℝ × ℝ := (0, 0)
def R : ℝ × ℝ := (25, 0)
def P : ℝ × ℝ := (0, 25 * Real.sqrt 3)

-- The theorem: ∠QRP = π / 3 (which is 60 degrees)
theorem angle_QRP_eq_pi_div_3 : angle Q R P = π / 3 := by
  sorry

end RightTriangleAngleProblem