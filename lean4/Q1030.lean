import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def orthogonalProjection (l : AffineSubspace ℝ Point) (p : Point) : Point := sorry
theorem simsonLine
  (A B C P : Point)
  (h_triangle_nondegenerate : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hP_on_circumcircle : dist P (circumcenter A B C) = dist A (circumcenter A B C)) : 
  Collinear ℝ ({ orthogonalProjection (line[ℝ, B, C]) P,
                 orthogonalProjection (line[ℝ, C, A]) P,
                 orthogonalProjection (line[ℝ, A, B]) P } : Set Point) := by
  sorry
