import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

namespace Putnam1987B2

open EuclideanGeometry

/-
Let O, A, B, C be points in the Euclidean plane ℝ such that:
- A and C lie on a circle of radius √50 centered at O,
- distSq A B = 36,
- distSq B C = 4,
- The angle ∠ A B C = π / 2,
We are to show that distSq O B = 26.
-/

theorem putnam_1987_b2
    (O A B C : EuclideanPlane ℝ)
    (hO_A : distSq O A = 50)
    (hO_C : distSq O C = 50)
    (hAB : distSq A B = 36)
    (hBC : distSq B C = 4)
    (h_angle : ∠ A B C = π / 2) :
    distSq O B = 26 := by sorry

end Putnam1987B2