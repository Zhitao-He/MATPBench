import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open Real InnerProductSpace
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace Problem
theorem value_of_t
  (A : P) (B : P) (C : P) (D : P) (E : P)
  (t : ℝ)
  (h_CA : dist C A = 10)
  (h_CD : dist C D = 2)
  (h_CE : dist C E = t - 2)
  (h_EB : dist E B = t + 1)
  (h_t_gt_2 : t > 2)
  (h_sbtw_CDA : Sbtw ℝ C D A)
  (h_sbtw_CEB : Sbtw ℝ C E B)
  (h_noncollinear_CAB : ¬ Collinear ℝ ({C, A, B} : Set P))
  (h_parallel_DE_AB : AffineSubspace.Parallel (affineSpan ℝ {D, E}) (affineSpan ℝ {A, B}))
  : t = 3 := by
  sorry
end Problem
