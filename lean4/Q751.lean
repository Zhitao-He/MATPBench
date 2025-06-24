import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem value_of_b
  (C E A D : P) (b : ℝ)
  (h_dist_CD : dist C D = b + 5)
  (h_dist_EA : dist E A = b)
  (h_ED_perp_CD : inner ℝ (E -ᵥ D) (C -ᵥ D) = 0)
  (h_D_on_line_EA : D ∈ affineSpan ℝ ({E, A} : Set P))
  (h_E_ne_D : E ≠ D)
  (h_area_CEA : (1/2 : ℝ) * dist E A * dist C (orthogonalProjection (affineSpan ℝ ({E, A} : Set P)) C) = 52)
  : b = 8 :=
by
  sorry
