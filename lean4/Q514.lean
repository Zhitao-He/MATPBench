import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real EuclideanGeometry InnerProductSpace 
open scoped EuclideanGeometry 
namespace GeometryProblem
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180) 
abbrev E := EuclideanSpace ℝ (Fin 2)
variable (M N L P : E)
axiom h_NM_dist : dist N M = 4
axiom h_angle_NLM_eq_PLN : ∠ N L M = ∠ P L N
axiom h_angle_PLN_val : ∠ P L N = degToRad 25
axiom h_LM_perp_NM : ∠ L M N = degToRad 90
axiom h_NP_perp_LP : ∠ L P N = degToRad 90
axiom h_LMN_noncollinear : ¬ Collinear ℝ ({L, M, N} : Set E)
axiom h_LNP_noncollinear : ¬ Collinear ℝ ({L, N, P} : Set E)
axiom h_L_ne_N : L ≠ N
axiom h_M_ne_N : M ≠ N
axiom h_P_ne_N : P ≠ N
theorem target_angle_MNP : ∠ M N P = degToRad 130 := by
  sorry
end GeometryProblem
