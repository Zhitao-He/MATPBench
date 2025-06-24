import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open EuclideanGeometry
open Affine AffineSubspace
open scoped EuclideanGeometry
noncomputable def circumcenter (A B C : Point) : Point := sorry
abbrev Point := EuclideanSpace ℝ (Fin 2)
namespace EuclideanGeometryProblem
theorem main
  (A B C D I F G : Point)
  (h_nondeg : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hD_on_circum : D ∈ EuclideanGeometry.Sphere.mk (circumcenter A B C) (dist A (circumcenter A B C)))
  (hAOD_collinear : Collinear ℝ ({A, circumcenter A B C, D} : Set Point))
  (hD_ne_A : D ≠ A)
  (hJ_on_seg : (EuclideanGeometry.orthogonalProjection (line[ℝ, A, B]) I : Point) ∈ (segment ℝ A B : Set Point))
  (hK_on_seg : (EuclideanGeometry.orthogonalProjection (line[ℝ, A, C]) I : Point) ∈ (segment ℝ A C : Set Point))
  (hF_wbtw : Wbtw ℝ C A F)
  (hAF_eq_BJ : dist A F = dist B (EuclideanGeometry.orthogonalProjection (line[ℝ, A, B]) I))
  (hG_wbtw : Wbtw ℝ B A G)
  (hD_ne_I : D ≠ I)
  (h_perp : inner ℝ (G -ᵥ F) (D -ᵥ I) = 0)
  : dist A G = dist C (EuclideanGeometry.orthogonalProjection (line[ℝ, A, C]) I) := by
  sorry
end EuclideanGeometryProblem
