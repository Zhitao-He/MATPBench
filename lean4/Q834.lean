import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def perimeterQuadrilateral (p₁ p₂ p₃ p₄ : P) : ℝ :=
  dist p₁ p₂ + dist p₂ p₃ + dist p₃ p₄ + dist p₄ p₁
theorem parallelogram_perimeter_value (
  A B C D E : P)
  (h_DE_len : dist D E = 5)
  (h_CB_len : dist C B = 23)
  (h_angle_EDB : EuclideanGeometry.angle E D B = Real.pi / 4)
  (h_parallelogram : D -ᵥ A = C -ᵥ B)
  (h_AE_perp_BE : EuclideanGeometry.angle A E B = Real.pi / 2)
  : perimeterQuadrilateral C A D B = 10 * Real.sqrt 2 + 46 := by sorry
