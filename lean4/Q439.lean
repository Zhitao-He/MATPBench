import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def MyIsSquare (p₁ p₂ p₃ p₄ : P) : Prop :=
  let side := dist p₁ p₂
  side > 0 ∧
  dist p₂ p₃ = side ∧
  dist p₃ p₄ = side ∧
  dist p₄ p₁ = side ∧
  ∠ p₄ p₁ p₂ = Real.pi / 2
namespace ProblemSohomDarlnimSylvia
noncomputable def areaSquare (p₁ p₂ p₃ p₄ : P) (_hIsSquare : MyIsSquare p₁ p₂ p₃ p₄) : ℝ :=
  dist p₁ p₂ ^ 2
theorem areaOfCALIIs180
  (B E R K T O W N C A L I : P)
  (hBerkIsSquare : MyIsSquare B E R K)
  (hBerkSideLength : dist B E = 10) 
  (hTMidpoint : T = midpoint ℝ B E)
  (hOMidpoint : O = midpoint ℝ E R)
  (hWMidpoint : W = midpoint ℝ R K)
  (hNMidpoint : N = midpoint ℝ K B)
  (hCaliIsSquare : MyIsSquare C A L I)
  (hEOnCA : E ∈ segment ℝ C A)
  (hROnAL : R ∈ segment ℝ A L)
  (hKOnLI : K ∈ segment ℝ L I)
  (hBOnIC : B ∈ segment ℝ I C)
  (hCaParallelBo : line[ℝ, C, A] ∥ line[ℝ, B, O])
  : areaSquare C A L I hCaliIsSquare = 180 := by
  sorry
end ProblemSohomDarlnimSylvia
