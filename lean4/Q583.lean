import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

namespace ProblemFormalization

open EuclideanGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

variable (O C A B E : P)

axiom h_BO_dist : dist B O = 15
axiom h_BO_eq_CA : dist B O = dist C A
axiom h_CE_dist : dist C E = 7
axiom h_CO_dist : dist C O = 13
axiom h_CO_eq_BA : dist C O = dist B A
axiom h_OE_perp_AE : inner (O -ᵥ E) (A -ᵥ E) = 0

def perimeterOCAB : ℝ :=
  dist O C + dist C A + dist A B + dist B O

theorem perimeterOCAB_eq_56 :
  perimeterOCAB O C A B = 56 := by sorry

end ProblemFormalization