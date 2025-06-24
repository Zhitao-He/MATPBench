import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.LinearAlgebra.AffineSpace.Midpoint 
namespace RectangleDiagonalProblem
open EuclideanGeometry Real
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem length_MP_is_40 (N M R Q P : PPoint) (x : ℝ)
    (h_len_NP : dist N P = 2 * x - 30)
    (h_len_NR : dist N R = 2 * x + 10)
    (h_P_midpoint_NR : P = midpoint ℝ N R)
    (h_P_midpoint_MQ : P = midpoint ℝ M Q)
    (h_diagonals_eq : dist N R = dist M Q)
    (hN_ne_R : N ≠ R) (hM_ne_Q : M ≠ Q)
    : dist M P = 40 := by sorry
end RectangleDiagonalProblem
