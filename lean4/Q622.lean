import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem value_of_y_is_2
  (A B C : PPoint)
  (x y : ℝ)
  (h_dist_BA : dist B A = 3)
  (h_eq_sides_BA_AC : dist B A = dist A C)
  (h_dist_BC_expr : dist B C = 4 * y - 5)
  (h_angle_BAC : EuclideanGeometry.angle B A C = (2 * x) * Real.pi / 180)
  (h_angle_CBA : EuclideanGeometry.angle C B A = (2 * x) * Real.pi / 180)
  (h_A_ne_B : A ≠ B)
  (h_C_ne_A : C ≠ A)
  (h_B_ne_C : B ≠ C)
  (h_not_collinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set PPoint)) :
  y = 2 := by
  sorry
