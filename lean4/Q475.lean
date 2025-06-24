import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open Real
open EuclideanGeometry
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (M N P_ Q R : P)
variable (x y z : ℝ)
axiom h_MN : dist M N = 3 * x - 4
axiom h_NQ : dist N Q = 15
axiom h_PN : dist P_ N = 2 * y + 5
axiom h_PQ : dist P_ Q = 12
axiom h_RM : dist R M = 18
axiom h_RP : dist R P_ = 20
axiom h_RQ : dist R Q = 3 * z - 3
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (π / 180)
axiom h_angle_MRQ : EuclideanGeometry.angle M R Q = degreesToRadians (38 : ℝ)
axiom h_angle_NQP : EuclideanGeometry.angle N Q P_ = degreesToRadians (83 : ℝ)
axiom h_angle_QNM : EuclideanGeometry.angle Q N M = degreesToRadians (33 : ℝ)
axiom h_parallelogram_MN_eq_RP : dist M N = dist R P_
axiom h_parallelogram_MR_eq_PN : dist M R = dist P_ N
theorem value_of_y : y = 13 / 2 := by sorry
