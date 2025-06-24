import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Analysis.Convex.Side 
open Real EuclideanGeometry Affine AffineSubspace 
open scoped EuclideanGeometry 
abbrev P₂ := EuclideanSpace ℝ (Fin 2)
theorem find_angle_MRQ (M R L P N Q : P₂) (x : ℝ)
  (hMR_ne : M ≠ R)
  (hPN_ne : N ≠ P)
  (hRP_ne : R ≠ P)
  (hLMR_collinear : Collinear ℝ ({L, M, R} : Set P₂))
  (hSbtwRPQ : Sbtw ℝ R P Q)
  (hAngleMRP : ∠ M R P = (5 * x + 7) * (Real.pi / 180))
  (hAngleRPN : ∠ R P N = (7 * x - 21) * (Real.pi / 180))
  (hx_gt_0_MRP : (5 * x + 7) > 0)
  (hx_lt_180_MRP : (5 * x + 7) < 180)
  (hx_gt_0_RPN : (7 * x - 21) > 0)
  (hx_lt_180_RPN : (7 * x - 21) < 180)
  (hParallel : AffineSubspace.Parallel (line[ℝ,M,R]) (line[ℝ,N,P])) 
  (hDiffSide : ¬ (line[ℝ,R,P]).WSameSide M N)
  : ∠ M R Q = (77 : ℝ) * (Real.pi / 180) := by
  sorry
