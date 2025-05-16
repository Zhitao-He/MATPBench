import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

abbrev P := EuclideanSpace ℝ (Fin 2)


section QuadrilateralGeometry


variable (A D C B : P)


noncomputable def perimeterOfQuadrilateral (V₁ V₂ V₃ V₄ : P) : ℝ :=
  dist V₁ V₂ + dist V₂ V₃ + dist V₃ V₄ + dist V₄ V₁


theorem adcb_perimeter_value :
  perimeterOfQuadrilateral A D C B = 4 * Real.sqrt 3 + 4 * Real.sqrt 6 + 52 := by
  sorry

end QuadrilateralGeometry