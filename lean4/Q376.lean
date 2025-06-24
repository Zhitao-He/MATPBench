import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def IsRightAngle (A X B : P) : Prop := inner ℝ (A -ᵥ X) (B -ᵥ X) = 0
namespace RectangleProblemFormalization
theorem distance_XM_is_1_4
  (A B C D X M : P)
  (h_rect_DAB : IsRightAngle D A B)
  (h_rect_ABC : IsRightAngle A B C)
  (h_rect_BCD : IsRightAngle B C D)
  (h_rect_CDA : IsRightAngle C D A)
  (h_len_AB : dist A B = 6)
  (h_len_AC : dist A C = 10)
  (h_X_on_AC : X ∈ segment ℝ A C)
  (h_A_ne_X : A ≠ X)
  (h_B_ne_X : B ≠ X)
  (h_BX_perp_AC : IsRightAngle A X B)
  (h_M_midpoint_AC : M = midpoint ℝ A C)
  : dist X M = 1.4 := by sorry
end RectangleProblemFormalization
