import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic

open EuclideanGeometry

section GeometryProblem

variable {P : Type*} [EuclideanSpace ℝ P] [Fact (finrank ℝ P = 2)]

/--
Let F, G, H, J, K be points in the Euclidean plane P (of dimension 2 over ℝ).
Suppose:
- dist G F = 12
- dist H G = 6
- dist H J = 8
- dist J K = x - 4   where x - 4 > 0
- G lies between H and F (dist H F = dist H G + dist G F)
- J lies between H and K (dist H K = dist H J + dist J K)
- H, G, J are not collinear (so triangle HGJ is nondegenerate)
- The lines GJ and FK are parallel
Then x = 20.
-/
theorem value_of_x_in_trapezoid_FGHK
    (F G H J K : P)
    (x : ℝ)
    (h_GF : dist G F = 12)
    (h_HG : dist H G = 6)
    (h_HJ : dist H J = 8)
    (h_JK : dist J K = x - 4)
    (hx_gt_zero : x - 4 > 0)
    (h_betw_HGF : dist H F = dist H G + dist G F)
    (h_betw_HJK : dist H K = dist H J + dist J K)
    (h_not_collinear_HGJ : ¬ Collinear ℝ ({H, G, J} : Set P))
    (h_GJ_parallel_FK : line[ℝ, G, J] ∥ line[ℝ, F, K])
    : x = 20 := by sorry

end GeometryProblem