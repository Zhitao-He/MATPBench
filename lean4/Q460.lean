import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Defs 
import Mathlib.Geometry.Euclidean.Projection 
abbrev P_plane := EuclideanSpace ℝ (Fin 2)
theorem sum_products_sides_distances_eq_60
  (A B C D : P_plane)
  (hA_ne_B : A ≠ B)
  (hB_ne_C : B ≠ C)
  (hC_ne_A : C ≠ A)
  (h_dist_AC : dist A C = 5)
  (h_dist_BC : dist B C = 12)
  (h_dist_AB : dist A B = 13)
  (h_area_ABC : (1/2 : ℝ) * abs (((B -ᵥ A) 0 * (C -ᵥ A) 1) - ((B -ᵥ A) 1 * (C -ᵥ A) 0)) = 30) 
  (hD_interior : D ∈ interior (convexHull ℝ ({A, B, C} : Set P_plane)))
  (e f g : ℝ)
  (he_def : e = dist D (EuclideanGeometry.orthogonalProjection (affineSpan ℝ {A, C}) D))
  (hf_def : f = dist D (EuclideanGeometry.orthogonalProjection (affineSpan ℝ {B, C}) D))
  (hg_def : g = dist D (EuclideanGeometry.orthogonalProjection (affineSpan ℝ {A, B}) D))
  : 5 * e + 12 * f + 13 * g = 60 := by
  sorry
