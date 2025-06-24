import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem value_of_x
  (A B C : P) (x : ℝ)
  (h_AC_eq_x : dist A C = x)
  (h_BA_eq_18 : dist B A = 18)
  (h_angle_ABC_eq_25_deg : ∠ A B C = (5 / 36 : ℝ) * Real.pi)
  (h_CAB_is_right_angle : ∠ C A B = Real.pi / 2)
  : x = 18 * Real.tan ((5 / 36 : ℝ) * Real.pi) := by
  sorry
