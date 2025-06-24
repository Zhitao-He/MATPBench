import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
theorem value_of_x_is_25
  (L M N B : PPoint)
  (x : ℝ)
  (h_LM_eq_MN : dist L M = dist M N)
  (h_B_midpoint_LN : B = midpoint ℝ L N)
  (h_M_on_circle : dist M B = dist N B)
  (h_angle_BNM : EuclideanGeometry.angle B N M = (2 * x - 5) * (Real.pi / 180))
  (h_L_ne_M : L ≠ M) (h_M_ne_N : M ≠ N) (h_N_ne_L : N ≠ L)
  (h_angle_BNM_is_valid : 0 < 2 * x - 5 ∧ 2 * x - 5 < 180)
  : x = 25 :=
by
  sorry
