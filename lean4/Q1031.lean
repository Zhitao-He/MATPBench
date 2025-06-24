import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def orthogonalProjection (l : AffineSubspace ℝ Point) (p : Point) : Point := sorry
noncomputable def circumcircle (A B C : Point) : Set Point := sorry 
theorem converse_simson_line
  (A B C P O : Point)
  (h_nondegenerate_triangle : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (h_O_is_circumcenter : O = circumcenter A B C) :
  let D := orthogonalProjection (line[ℝ, B, C]) P
  let E := orthogonalProjection (line[ℝ, C, A]) P
  let F := orthogonalProjection (line[ℝ, A, B]) P
  Collinear ℝ ({D, E, F} : Set Point) →
  P ∈ circumcircle A B C :=
by sorry
