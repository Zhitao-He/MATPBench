import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
structure IsParallelogramTSRU (T S R U : PPoint) : Prop where
  vecTSEqVecUR : S -ᵥ T = R -ᵥ U
  vecTUEqVecSR : U -ᵥ T = R -ᵥ S
theorem problemStatement
  (T S R U : PPoint)
  (x : ℝ)
  (hParallelogram : IsParallelogramTSRU T S R U)
  (hSNeR : S ≠ R) (hUNeR : U ≠ R) (hUNeT : U ≠ T) (hSNeT : S ≠ T)
  (hSruNotCollinear : ¬ Collinear ℝ ({S, R, U} : Set PPoint))
  (hUtsNotCollinear : ¬ Collinear ℝ ({U, T, S} : Set PPoint))
  (hAngleEquality : 6 * x - 54 = 4 * x + 6)
  (hXStrictBounds : 9 < x ∧ x < 39)
  : x = 30 :=
by
  sorry
