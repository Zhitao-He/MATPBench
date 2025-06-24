import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
noncomputable section
abbrev Point := EuclideanSpace ℝ (Fin 2)
def IsParallelogramPoints (A B C D : Point) : Prop :=
  (B -ᵥ A = C -ᵥ D) ∧ (D -ᵥ A = C -ᵥ B)
structure IsRectangle (A B C D : Point) where
  is_parallelogram : IsParallelogramPoints A B C D
  angle_DAB_is_right : inner ℝ (B -ᵥ A) (D -ᵥ A) = 0 
noncomputable def parallelogram_area_from_vectors (u v : Point) : ℝ := 
  abs (u 0 * v 1 - u 1 * v 0)
namespace Problem
variable (A B C D : Point)
variable (h_rect : IsRectangle A B C D)
variable (h_area_ABCD : (norm (B -ᵥ A)) * (norm (D -ᵥ A)) = 10)
variable (M N : Point)
variable (hM : M = midpoint ℝ A D) 
variable (hN : N = midpoint ℝ B C) 
theorem area_MBND_is_5 : parallelogram_area_from_vectors (B -ᵥ M) (D -ᵥ M) = 5 := by
  sorry
end Problem
end 
