import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Pi.Bounds
open Real EuclideanGeometry
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (S R T : P)
axiom hSR : dist S R = 5
axiom hTR : dist T R = 3
axiom hTS : dist T S = 4
axiom hRTS_right : ∠ R T S = Real.pi / 2
theorem cos_angle_SRT_eq_three_fifths : Real.cos (∠ S R T) = (3 / 5 : ℝ) := by
  sorry
