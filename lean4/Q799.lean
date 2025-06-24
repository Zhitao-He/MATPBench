import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real EuclideanGeometry
abbrev Plane := EuclideanSpace ℝ (Fin 2)
variable (M N P : Plane)
axiom h_NM : dist N M = 39
axiom h_PM : dist P M = 36
axiom h_PN : dist P N = 15
axiom h_angle : angle M P N = Real.pi / 2
theorem cos_angle_NMP (M N P : Plane)
  (h_NM : dist N M = 39) (h_PM : dist P M = 36) (h_PN : dist P N = 15)
  (h_angle : angle M P N = Real.pi / 2) :
  Real.cos (angle N M P) = 12 / 13 := by
  sorry
