import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.VecNotation
import Mathlib.Analysis.InnerProductSpace.PiL2 
abbrev P2 := EuclideanSpace ℝ (Fin 2)
def A : P2 := ![-3, 0]  
def C : P2 := ![0, 3]     
def D : P2 := ![0, 6]     
noncomputable def triangleArea (p1 p2 p3 : P2) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
theorem area_ACD_is_4_5 : triangleArea A C D = (9/2 : ℝ) := by sorry
