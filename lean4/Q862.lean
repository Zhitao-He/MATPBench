import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Data.Real.Basic
open EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C D E : P)
variable (x : ℝ)
axiom hAB : dist A B = 15
axiom hDA : dist D A = 9
axiom hDB : dist D B = 12
axiom hDE : dist D E = x
axiom hEOnAB : Wbtw ℝ A E B
axiom hParallelogram : D -ᵥ A = C -ᵥ B
axiom hBEperpDE : ∠ D E B = π / 2  
axiom hCBperpDB : ∠ D B C = π / 2  
theorem valueOfX : x = 36 / 5 := by sorry
