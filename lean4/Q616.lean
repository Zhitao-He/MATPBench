import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem find_AC_length
  (A B C D : PPoint)
  (h_CB_len : dist C B = 6)
  (h_angle_CAB : EuclideanGeometry.angle C A B = Real.pi / 3)
  (h_is_rhombus : (B -ᵥ A = C -ᵥ D) ∧ (dist A B = dist B C)) :
  dist A C = 6 := by
  sorry
