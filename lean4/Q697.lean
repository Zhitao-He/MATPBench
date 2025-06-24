import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Pi.Bounds
open Real EuclideanGeometry Affine AffineSubspace
open scoped EuclideanGeometry
noncomputable section
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace EuclideanGeometryProblem
variable (H P_pt M R C S N D E G I L : P)
variable (x y z : ℝ)
noncomputable def degreesToRadians (degrees : ℝ) : ℝ := degrees * (Real.pi / 180)
axiom angle_HPM_eq : ∠ H P_pt M = degreesToRadians (4 * y)
axiom angle_MPR_eq : ∠ M P_pt R = degreesToRadians 68
axiom angle_PRC_eq : ∠ P_pt R C = degreesToRadians x
axiom angle_SCR_eq : ∠ S C R = degreesToRadians (5 * z + 2)
axiom cm_parallel_rp : line[ℝ, C, M] ∥ line[ℝ, R, P_pt]
axiom cr_parallel_mp : line[ℝ, C, R] ∥ line[ℝ, M, P_pt]
axiom hpr_is_straight_angle : ∠ H P_pt R = Real.pi
axiom angle_sum_HPM_MPR_eq_HPR : ∠ H P_pt M + ∠ M P_pt R = ∠ H P_pt R
axiom p_ne_H : P_pt ≠ H
axiom p_ne_M : P_pt ≠ M
axiom p_ne_R : P_pt ≠ R
axiom r_ne_C : R ≠ C
axiom c_ne_S : C ≠ S
axiom c_ne_M : C ≠ M
axiom m_not_on_line_HPR : ¬ Collinear ℝ ({H, P_pt, M} : Set P)
axiom hprlg_collinear : Collinear ℝ ({H, P_pt, R, L, G} : Set P)
axiom scmed_collinear : Collinear ℝ ({S, C, M, E, D} : Set P)
axiom ncri_collinear : Collinear ℝ ({N, C, R, I} : Set P)
theorem value_of_y_is_28 : y = 28 := by sorry
end EuclideanGeometryProblem
end noncomputable section
