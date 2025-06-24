import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic
open Real InnerProductSpace EuclideanGeometry
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)
variable (A B C D E F K : EuclideanPlane)
theorem AK_perp_BC
    (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set EuclideanPlane))
    (h_D_on_BC : D ∈ openSegment ℝ B C)
    (h_AD_bisects : ∠ B A D = ∠ D A C)
    (h_E_proj : E = orthogonalProjection (affineSpan ℝ ({A, B} : Set EuclideanPlane)) D)
    (h_F_proj : F = orthogonalProjection (affineSpan ℝ ({A, C} : Set EuclideanPlane)) D)
    (h_K_on_CE : K ∈ affineSpan ℝ ({C, E} : Set EuclideanPlane))
    (h_K_on_BF : K ∈ affineSpan ℝ ({B, F} : Set EuclideanPlane)) :
    inner ℝ (K -ᵥ A) (C -ᵥ B) = 0 :=
by
  sorry
