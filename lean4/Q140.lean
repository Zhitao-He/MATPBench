import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
noncomputable section
abbrev P := EuclideanSpace ℝ (Fin 2)
section
noncomputable def triangleArea (A B C : P) : ℝ :=
  (1 / 2 : ℝ) * abs ((B -ᵥ A) 0 * (C -ᵥ A) 1 - (B -ᵥ A) 1 * (C -ᵥ A) 0)
variable (A B C D E : P)
variable (hAB : dist A B = 4)
variable (hBC : dist B C = 6)
variable (hAE : dist A E = 8)
variable (hEAB_right : EuclideanGeometry.angle E A B = Real.pi / 2)
variable (hABC_right : EuclideanGeometry.angle A B C = Real.pi / 2)
variable (hD_on_AC : D ∈ segment ℝ A C)
variable (hD_on_BE : D ∈ segment ℝ B E)
theorem area_difference_ADE_BDC_is_4
  (A B C D E : P)
  (hAB : dist A B = 4)
  (hBC : dist B C = 6)
  (hAE : dist A E = 8)
  (hEAB_right : EuclideanGeometry.angle E A B = Real.pi / 2)
  (hABC_right : EuclideanGeometry.angle A B C = Real.pi / 2)
  (hD_on_AC : D ∈ segment ℝ A C)
  (hD_on_BE : D ∈ segment ℝ B E) :
  triangleArea A D E - triangleArea B D C = 4 := by
  sorry
end
end
