import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry Affine AffineSubspace
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
theorem find_value_of_y
  (A B C D F : PPoint)
  (x y : ℝ)
  (h_is_rectangle :
    inner ℝ (B -ᵥ A) (D -ᵥ A) = 0 ∧
    inner ℝ (C -ᵥ B) (A -ᵥ B) = 0 ∧
    inner ℝ (D -ᵥ C) (B -ᵥ C) = 0 ∧
    inner ℝ (A -ᵥ D) (C -ᵥ D) = 0 ∧
    line[ℝ, A, D] ∥ line[ℝ, B, C] ∧
    line[ℝ, A, B] ∥ line[ℝ, D, C])
  (h_F_on_AC_diag : Sbtw ℝ A F C)
  (h_F_on_BD_diag : Sbtw ℝ D F B)
  (h_angle_DAF_val : EuclideanGeometry.angle D A F = degToRad (4 * x + 5))
  (h_angle_FAB_val : EuclideanGeometry.angle F A B = degToRad (9 * x + 20))
  (h_angle_FBC_val : EuclideanGeometry.angle F B C = degToRad (4 * y + 4))
  (h_angle_FDA_val : EuclideanGeometry.angle F D A = degToRad (y * y - 1))
  (h_angle_DAF_pos_lt_180 : 0 < 4 * x + 5 ∧ 4 * x + 5 < 180)
  (h_angle_FAB_pos_lt_180 : 0 < 9 * x + 20 ∧ 9 * x + 20 < 180)
  (h_angle_FBC_pos_lt_180 : 0 < 4 * y + 4 ∧ 4 * y + 4 < 180)
  (h_angle_FDA_pos_lt_180 : 0 < y * y - 1 ∧ y * y - 1 < 180) :
  y = 5 := by
  sorry
