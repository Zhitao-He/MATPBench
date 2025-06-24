import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
namespace ProblemFormalization
open scoped EuclideanGeometry 
abbrev E := EuclideanSpace ℝ (Fin 2)
variable (J M N L P K : E)
def radius : ℝ := 10
axiom h_KJ : dist K J = radius
axiom h_KM : dist K M = radius
axiom h_KN : dist K N = radius
axiom h_KL : dist K L = radius
axiom h_MN : dist M N = 16
axiom h_M_ne_K : M ≠ K
axiom h_M_ne_N : M ≠ N
axiom h_angle_KMN : ∠ K M N = (98 : ℝ) * (Real.pi / 180)
axiom h_P_ne_M : P ≠ M
axiom h_P_ne_K : P ≠ K
axiom h_MP_perp_KP : ∠ M P K = Real.pi / 2
axiom h_P_on_segment_MN : P ∈ segment ℝ M N
axiom h_L_on_segment_KP : L ∈ segment ℝ K P
theorem length_LN_is_4_sqrt_5 : dist L N = 4 * Real.sqrt 5 := by
  sorry
end ProblemFormalization
