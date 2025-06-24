import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Data.Real.Pi.Bounds 
open Real
open EuclideanGeometry Affine AffineSubspace 
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (N J K H A F : P)
axiom h_JA_parallel_NF : line[ℝ, J, A] ∥ line[ℝ, N, F]
axiom h_J_between_K_A : Sbtw ℝ K J A
axiom h_N_between_H_F : Sbtw ℝ H N F
axiom h_angle_NJK_value : ∠ N J K = (101 / 180 : ℝ) * π
theorem angle_HNJ_eq_79_degrees : ∠ H N J = (79 / 180 : ℝ) * π := by
  sorry
