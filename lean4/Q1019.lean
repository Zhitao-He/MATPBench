import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

namespace GeoProblem

open scoped EuclideanGeometry

-- Let V be a real inner product space, and P a Euclidean affine space modeled on V.
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points of the configuration
variable (A B C O D E F G : P)

-- A, B, C are not collinear
variable (hABC : ¬Collinear ℝ A B C)

-- O is the circumcenter of triangle ABC
variable (hO : O = circumcenter ℝ A B C)

-- D ∈ segment AB
variable (hD : D ∈ segment ℝ A B)

-- E ∈ segment AC
variable (hE : E ∈ segment ℝ A C)

-- D, O, E are collinear
variable (hDOE : Collinear ℝ D O E)

-- F is the midpoint of BE
variable (hF : F = midpoint ℝ B E)

-- G is the midpoint of CD
variable (hG : G = midpoint ℝ C D)

-- The conclusion: ∠FOG = ∠BAC (unoriented)
theorem angle_FOG_eq_angle_BAC : ∠ F O G = ∠ B A C := by sorry

end GeoProblem