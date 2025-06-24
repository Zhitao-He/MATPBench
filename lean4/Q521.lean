import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Data.Real.Pi.Bounds 
open Real EuclideanGeometry Affine AffineSubspace
open scoped EuclideanGeometry 
noncomputable section ProblemDescription
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (E Y Q M A F : P)
variable (x y : ℝ)
noncomputable def degToRad (degrees : ℝ) : ℝ := degrees * (Real.pi / 180)
axiom h_E_ne_Y : E ≠ Y
axiom h_Q_ne_Y : Q ≠ Y
axiom h_M_ne_A : M ≠ A
axiom h_Q_ne_A : Q ≠ A
axiom h_Y_ne_Q : Y ≠ Q
axiom h_F_ne_Q : F ≠ Q
axiom h_E_ne_F : E ≠ F
axiom h_Y_ne_M : Y ≠ M
axiom h_angle_EYQ : ∠ E Y Q = degToRad (3 * y + 1)
axiom h_angle_MAQ : ∠ M A Q = degToRad (3 * x + 11)
axiom h_angle_YQF : ∠ Y Q F = degToRad (4 * x - 5)
axiom h_EF_parallel_YQ : line[ℝ, E, F] ∥ line[ℝ, Y, Q]
axiom h_QA_parallel_YM : line[ℝ, Q, A] ∥ line[ℝ, Y, M]
axiom h_YQ_parallel_MA : line[ℝ, Y, Q] ∥ line[ℝ, M, A]
axiom h_EYM_collinear : Collinear ℝ ({E, Y, M} : Set P)
axiom h_Q_not_on_line_EM : ¬ Collinear ℝ ({E, M, Q} : Set P)
axiom h_EYQ_MYQ_supplementary : ∠ E Y Q + ∠ M Y Q = Real.pi
axiom h_MYQ_eq_MAQ : ∠ M Y Q = ∠ M A Q
axiom h_M_Y_Q_noncollinear : ¬ Collinear ℝ ({M, Y, Q} : Set P)
axiom h_M_A_Q_noncollinear : ¬ Collinear ℝ ({M, A, Q} : Set P)
axiom h_YQF_eq_MAQ : ∠ Y Q F = ∠ M A Q
axiom h_Q_A_F_collinear : Collinear ℝ ({Q, A, F} : Set P)
theorem target_value_of_y : y = 40 := by sorry
end ProblemDescription
