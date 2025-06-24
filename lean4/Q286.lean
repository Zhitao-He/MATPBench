import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Data.Real.Basic
open Real Affine AffineSubspace 
namespace Problem
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem length_BN_is_4
  (A B C M N : P)
  (hCM : dist C M = 3)  
  (hMA : dist M A = 5)  
  (hCN : dist C N = 2.4) 
  (hM_on_segment_CA : M ∈ segment ℝ C A)
  (hN_on_segment_CB : N ∈ segment ℝ C B)
  (hMN_parallel_AB : line[ℝ, M, N] ∥ line[ℝ, A, B]) 
  (h_noncollinear_CAB : ¬ Collinear ℝ ({C, A, B} : Set P))
  : dist N B = 4 := by
  sorry
end Problem
