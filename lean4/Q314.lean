import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle

-- Define Point as a 2D Euclidean Space
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Definition of a square WXYZ
def is_square (W X Y Z : Point) : Prop :=
  let s := dist W X
  s > 0 ∧
  dist X Y = s ∧
  dist Y Z = s ∧
  dist Z W = s ∧
  Angle.IsRight W X Y ∧
  Angle.IsRight X Y Z ∧
  Angle.IsRight Y Z W ∧
  Angle.IsRight Z W X

-- Formalized problem statement
theorem problem_statement
    (W X Y Z A B C : Point)
    (h_WXYZ_is_square : is_square W X Y Z)
    (h_diag_WY_len : dist W Y = 12)
    (h_A_midpoint_WX : A = W +ᵥ (1/(2:ℝ)) • (X -ᵥ W))
    (h_AB_perp_AC : Angle.perp (B -ᵥ A) (C -ᵥ A))
    (h_AB_eq_AC_len : dist A B = dist A C)
    : dist B C = 18 := by sorry