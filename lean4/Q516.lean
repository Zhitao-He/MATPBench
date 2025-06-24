import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
namespace ProblemParallelogram
open EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (M N R Q L : P)
variable (w x y : ℝ)
axiom h_ML : dist M L = w
axiom h_MN : dist M N = 2 * y + 5
axiom h_MR : dist M R = 4 * x - 2
axiom h_QL : dist Q L = 12
axiom h_QN : dist Q N = 3 * x + 2
axiom h_QR : dist Q R = 3 * y
axiom h_L_mid_MQ : L = midpoint ℝ M Q
theorem value_of_w : w = 12 := by
  sorry
end ProblemParallelogram
