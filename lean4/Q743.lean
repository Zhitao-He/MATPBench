import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open Real EuclideanGeometry
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (A B C : P)
axiom h_CB_eq : dist B C = 14
axiom h_AC_eq : dist A C = 48
axiom h_AB_eq : dist A B = 50
axiom h_BC_perp_AC : EuclideanGeometry.angle A C B = Real.pi / 2
theorem value_of_tan_CAB (A B C : P)
  (h_CB_eq : dist B C = 14) (h_AC_eq : dist A C = 48) (h_AB_eq : dist A B = 50)
  (h_BC_perp_AC : EuclideanGeometry.angle A C B = Real.pi / 2) :
  Real.tan (EuclideanGeometry.angle C A B) = 7 / 24 := by
  sorry
