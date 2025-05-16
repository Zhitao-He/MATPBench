import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

namespace EuclideanGeometryProblem

-- We work in the Euclidean plane over ℝ, using the alias PPoint for convenience.
abbrev PPoint := EuclideanPlane ℝ

-- Points in the plane
variable {P Q R S : PPoint}

-- Helper function to convert degrees to radians.
def angleRad (d : ℝ) : ℝ := d * Real.pi / 180

-- Hypotheses as per the problem statement:

-- 1. P, Q, R are not collinear (they form a triangle)
variable (h_not_collinear_PQR : ¬ Collinear ℝ P Q R)

-- 2. S is collinear with P and R
variable (h_S_collinear_PR : Collinear ℝ P S R)

-- 3. S is weakly between P and R (S ∈ [P, R])
variable (h_S_wbtw_PR : Wbtw ℝ P S R)

-- 4. Angle P Q R is 90 degrees
variable (h_angle_PQR_90 : ∠ P Q R = angleRad 90)

-- 5. Angle Q P S is 51 degrees
variable (h_angle_QPS_51 : ∠ Q P S = angleRad 51)

-- 6. Angle Q R S is 33 degrees
variable (h_angle_QRS_33 : ∠ Q R S = angleRad 33)

-- Theorem: The angle S Q R is 39 degrees
theorem angleSQR_is_39 : ∠ S Q R = angleRad 39 := by
  sorry -- Proof omitted

end EuclideanGeometryProblem