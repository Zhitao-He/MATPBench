import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
structure IsSquare' (A B C D : P) : Prop where
  side_AB_eq_BC : dist A B = dist B C
  side_BC_eq_CD : dist B C = dist C D
  side_CD_eq_DA : dist C D = dist D A
  angle_A : ∠ D A B = Real.pi / 2
  angle_B : ∠ A B C = Real.pi / 2
  angle_C : ∠ B C D = Real.pi / 2
  angle_D : ∠ C D A = Real.pi / 2
noncomputable def area_of_square (A B _ _ : P) : ℝ :=
  (dist A B) * (dist A B)
theorem area_of_inscribed_square
    (A B C D : P)
    (E F G H : P)
    (h_abcd_is_square : IsSquare' A B C D)
    (h_area_abcd : area_of_square A B C D = 100)
    (h_E_on_AB : Wbtw ℝ A E B)
    (h_F_on_BC : Wbtw ℝ B F C)
    (h_G_on_CD : Wbtw ℝ C G D)
    (h_H_on_DA : Wbtw ℝ D H A)
    (h_AE_length : dist A E = 2)
    (h_efgh_is_square : IsSquare' E F G H)
    : area_of_square E F G H = 68 := by
  sorry
