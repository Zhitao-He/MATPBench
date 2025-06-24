import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Data.Real.Basic 
open EuclideanGeometry Real Affine AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem similar_triangles_length_problem
    (F G H J K : P)
    (x : ℝ)
    (h_HG : dist H G = 6)
    (h_GF : dist G F = 12)
    (h_HJ : dist H J = 8)
    (h_JK : dist J K = x - 4)
    (h_SameRay_HGF : SameRay ℝ (G -ᵥ H) (F -ᵥ G))
    (h_SameRay_HJK : SameRay ℝ (J -ᵥ H) (K -ᵥ J))
    (h_GJ_parallel_FK : line[ℝ, G, J] ∥ line[ℝ, F, K]) 
    (h_x_gt_4 : x > 4)
    (h_noncollinear_HGJ : ¬Collinear ℝ ({H, G, J} : Set P)) :
    x = 20 := by
  sorry
