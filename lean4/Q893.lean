import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry Affine AffineSubspace
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def perimeterADCB (ptA ptD ptC ptB : P) : ℝ :=
  dist ptA ptD + dist ptD ptC + dist ptC ptB + dist ptB ptA
theorem target_perimeter_value
  (a b c d e f : P)
  (h_ab_len : dist a b = 24)
  (h_bc_len : dist b c = 8)
  (h_angle_adc : ∠ a d c = Real.pi/4)
  (h_angle_cba : ∠ c b a = Real.pi/3)
  (h_ab_parallel_dc : line[ℝ, a, b] ∥ line[ℝ, d, c])
  (h_bf_perp_cf : ∠ b f c = Real.pi/2)
  (h_de_perp_ae : ∠ d e a = Real.pi/2)
  (h_f_on_segment_ab : f ∈ segment ℝ a b)
  (h_e_on_segment_dc : e ∈ segment ℝ d c)
  : perimeterADCB a d c b = 4 * sqrt 3 + 4 * sqrt 6 + 52 := by
  sorry
