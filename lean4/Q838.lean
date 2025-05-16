import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

set_option autoImplicit false

namespace FormalProblem

open EuclideanGeometry

/--
Formalization of the following problem:

Let A, B, C, D be points in the Euclidean plane (ℝ²).  
- B lies strictly between A and D (collinear and between).
- The vector CB is perpendicular to BA.
- The vector CB is also perpendicular to BD.
- dist B D = 4, dist C D = 10, dist A B = y, dist B C = x, dist A D = z.

Prove: z = 25.
-/
theorem geometryRightTriangleAD25
    (A B C D : EuclideanSpace ℝ (Fin 2))
    (x y z : ℝ)
    (h_Sbtw : Sbtw ℝ A B D)
    (h_perp_CB_BA : inner (B -ᵥ C) (A -ᵥ B) = 0)
    (h_perp_CB_BD : inner (B -ᵥ C) (D -ᵥ B) = 0)
    (h_len_BD : dist B D = 4)
    (h_len_CD : dist C D = 10)
    (h_len_AB : dist A B = y)
    (h_len_BC : dist B C = x)
    (h_len_AD : dist A D = z)
    : z = 25 := by
  sorry

end FormalProblem