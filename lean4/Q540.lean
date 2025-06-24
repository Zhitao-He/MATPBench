import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry
open Real
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (S Q R T : P)
axiom h_SQ : dist S Q = 18
axiom h_RQ : dist R Q = 6
axiom h_SR : dist S R = 14
axiom h_T_on_SQ : Wbtw ℝ S T Q
axiom h_angle_eq : angle T R Q = ∠ S R T
theorem value_of_x : dist Q T = 27 / 5 := by
  sorry
