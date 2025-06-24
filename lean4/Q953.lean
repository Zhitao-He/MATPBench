import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.Topology.MetricSpace.Pseudo.Defs 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle 
import Mathlib.Analysis.InnerProductSpace.Basic 
noncomputable section
open EuclideanGeometry InnerProductSpace 
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (o a b c d p e f : P)
variable (r : ℝ)
axiom hr_pos : 0 < r
axiom h_a_ne_b : a ≠ b
axiom h_o_midpoint_ab : o = midpoint ℝ a b
axiom h_dist_ao_eq_r : dist a o = r
axiom h_c_on_circle : c ∈ Metric.sphere o r 
axiom h_d_on_circle : d ∈ Metric.sphere o r 
axiom h_c_ne_a : c ≠ a
axiom h_c_ne_b : c ≠ b
axiom h_d_ne_a : d ≠ a
axiom h_d_ne_b : d ≠ b
axiom h_c_ne_d : c ≠ d
axiom h_p_on_line_cd : Collinear ℝ ({c, d, p} : Set P)
axiom h_p_ne_b : p ≠ b
axiom h_tangent_at_b : ⟪o -ᵥ b, p -ᵥ b⟫_ℝ = 0 
axiom h_o_ne_p : o ≠ p
axiom h_e_on_line_op : Collinear ℝ ({o, p, e} : Set P)
axiom h_e_on_line_ca : Collinear ℝ ({c, a, e} : Set P)
axiom h_f_on_line_op : Collinear ℝ ({o, p, f} : Set P)
axiom h_f_on_line_ad : Collinear ℝ ({a, d, f} : Set P)
theorem oe_eq_of : dist o e = dist o f := by 
  sorry
end
