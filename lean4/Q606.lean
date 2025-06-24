import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def perimeterQuadrilateral (p₁ p₂ p₃ p₄ : PPoint) : ℝ :=
  dist p₁ p₂ + dist p₂ p₃ + dist p₃ p₄ + dist p₄ p₁
theorem find_perimeter_of_BCDA
  (A B C D E : PPoint)
  (h_AB : dist A B = 36)
  (h_AD : dist A D = 22)
  (h_angle_BCE : EuclideanGeometry.angle B C E = Real.pi / 6)
  (h_parallelogram : (C -ᵥ B = D -ᵥ A) ∧ (D -ᵥ C = A -ᵥ B))
  (h_perp : EuclideanGeometry.angle C E B = Real.pi / 2) :
  perimeterQuadrilateral B C D A = 116 := by
  sorry
