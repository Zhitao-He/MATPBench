import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle

open EuclideanGeometry

namespace EuclideanGeometryProblem

/--
Given:  
- Points A, B, C in the Euclidean plane (`EuclideanSpace ℝ (Fin 2)`)
- dist(C, A) = 9,
- dist(B, A) = 18,
- (C - A) and (C - B) are orthogonal (i.e., angle at C is a right angle)

Conclusion:
- dist(C, B) = 9 * sqrt 3
-/
theorem length_CB_in_triangle_ABC
    (A B C : EuclideanSpace ℝ (Fin 2))
    (hAC : dist C A = 9)
    (hAB : dist B A = 18)
    (h_right_angle_at_C : ⟪C - A, C - B⟫_ℝ = 0) :
    dist C B = 9 * Real.sqrt 3 := by sorry

end EuclideanGeometryProblem