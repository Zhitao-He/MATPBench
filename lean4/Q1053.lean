import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def orthogonalProjection (l : AffineSubspace ℝ P) (p : P) : P := sorry
theorem isosceles_triangle_angle_equality
    (A B C : P)
    (h_AB_eq_AC : dist A B = dist A C)
    (h_non_collinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))
  :
    let E : P := A +ᵥ (1 / 2 : ℝ) • (C -ᵥ A)
    let D : P := B +ᵥ (2 / 3 : ℝ) • (C -ᵥ B)
    let F : P := orthogonalProjection (affineSpan ℝ ({B, E} : Set P)) D
    ∠ E F C = ∠ A B C := by
  sorry
