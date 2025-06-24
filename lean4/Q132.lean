import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev P := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
noncomputable def quadrilateralPerimeter (p₁ p₂ p₃ p₄ : P) : ℝ :=
  dist p₁ p₂ + dist p₂ p₃ + dist p₃ p₄ + dist p₄ p₁
theorem perimeter_of_adef_is_56
  (a b c d e f : P)
  (h_abc_not_collinear : ¬ Collinear ℝ ({a, b, c} : Set P))
  (h_ab_len : dist a b = 28)
  (h_ac_len : dist a c = 28)
  (h_bc_len : dist b c = 20)
  (h_d_on_ab : d ∈ segment ℝ a b)
  (h_e_on_bc : e ∈ segment ℝ b c)
  (h_f_on_ac : f ∈ segment ℝ a c)
  (h_de_parallel_ac : AffineSubspace.Parallel (affineSpan ℝ {d, e}) (affineSpan ℝ {a, c}))
  (h_ef_parallel_ab : AffineSubspace.Parallel (affineSpan ℝ {e, f}) (affineSpan ℝ {a, b})) :
  quadrilateralPerimeter a d e f = 56 := by
  sorry
