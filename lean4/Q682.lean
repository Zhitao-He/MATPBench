import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
open Affine
theorem find_angle_HIJ
  (W X Y Z H I J : PPoint)
  (h_W_X_Y_collinear : Sbtw ℝ W X Y)
  (h_X_Y_Z_collinear : Sbtw ℝ X Y Z)
  (h_J_H_X_collinear : Sbtw ℝ J H X)
  (h_J_I_Y_collinear : Sbtw ℝ J I Y)
  (h_angle_WXH : angle W X H = (130 / 180) * Real.pi)
  (h_angle_IYZ : angle I Y Z = (20 / 180) * Real.pi)
  (h_dist_prop : dist J I * dist J Y = dist J H * dist J X)
  : angle H I J = (50 / 180) * Real.pi :=
by
  sorry
