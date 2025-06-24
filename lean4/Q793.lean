import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
open RealInnerProductSpace
abbrev Plane := EuclideanSpace ℝ (Fin 2)
namespace TrapezoidProblem
theorem trapezoid_median_length_formula
    (T V A R M N : Plane)
    (h_TR_length : dist T R = 44)
    (h_VA_length : dist V A = 21)
    (h_M_midpoint : M = midpoint ℝ T V)
    (h_N_midpoint : N = midpoint ℝ R A)
    (h_bases_parallel : SameRay ℝ (R -ᵥ T) (A -ᵥ V)) :
    dist M N = (dist T R + dist V A) / 2 := by
  sorry
theorem length_MN_is_65_div_2
    (T V A R M N : Plane)
    (h_TR_length : dist T R = 44)
    (h_VA_length : dist V A = 21)
    (h_M_midpoint : M = midpoint ℝ T V)
    (h_N_midpoint : N = midpoint ℝ R A)
    (h_bases_parallel : SameRay ℝ (R -ᵥ T) (A -ᵥ V)) :
    dist M N = 65 / 2 := by
  sorry
end TrapezoidProblem
