import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional

namespace ProblemFormalization

open Real EuclideanGeometry

-- Let V be a 2-dimensional real inner product space and P its affine space of points.
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [FiniteDimensional ℝ V] [Fact (FiniteDimensional.finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Declare three points forming the triangle.
variable (A B C : P)

/--
Given a right-angled triangle ABC with right angle at A (angle BAC = π/2),
and cos(∠ABC) = 3/5, then cos(∠BCA) = 4/5.
-/
theorem right_triangle_cosine_value
    (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P))
    (h_angle_A_right : angle B A C = π / 2)
    (h_cos_B : Real.cos (angle A B C) = (3 : ℝ)/5) :
    Real.cos (angle B C A) = (4 : ℝ)/5 := by
  sorry

end ProblemFormalization