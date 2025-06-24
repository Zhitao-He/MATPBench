import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (A B C : P) : ℝ :=
  (1 / 2 : ℝ) * (dist A B) * (dist B C) * Real.sin (EuclideanGeometry.angle A B C)
theorem area_of_triangle_QPS_is_96_sqrt_3
  (Q P_pt R S : P)
  (h_R_on_QS : Wbtw ℝ Q R S)
  (h_QR_len : dist Q R = 8)
  (h_PR_len : dist P_pt R = 12)
  (h_angle_PRQ : EuclideanGeometry.angle P_pt R Q = (2 * Real.pi / 3))
  (h_angle_RPS : EuclideanGeometry.angle R P_pt S = (Real.pi / 2))
  : triangleArea Q P_pt S = 96 * Real.sqrt 3 := by
  sorry
