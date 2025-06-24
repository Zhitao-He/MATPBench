import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Analysis.InnerProductSpace.PiL2 
noncomputable section
open scoped RealInnerProductSpace
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem gc_perpendicular_ac
    (A B C D E F G : P)
    (h_parallelogram : C = B + D - A)
    (h_noncollinear_ABD : ¬ Collinear ℝ ({A, B, D} : Set P))
    (hE : E = orthogonalProjection (affineSpan ℝ ({A, B} : Set P)) C)
    (hF : F = orthogonalProjection (affineSpan ℝ ({A, D} : Set P)) C)
    (hG_on_EF : G ∈ affineSpan ℝ ({E, F} : Set P))
    (hG_on_BD : G ∈ affineSpan ℝ ({B, D} : Set P))
    : ⟪G - C, A - C⟫ = 0 := by 
  sorry
end
