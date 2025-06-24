import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
open Set
abbrev Point := EuclideanSpace ℝ (Fin 2)
def pt (x y : ℝ) : Point := ![x, y]
def P_coord : Point := pt 6 0
def V_TL : Set Point := {pt 0 4, pt 2 4, pt 0 6, pt 2 6}
def V_TR : Set Point := {pt 4 4, pt 6 4, pt 4 6, pt 6 6}
def V_BR : Set Point := {pt 4 0, pt 6 0, pt 4 2, pt 6 2}
def V_BL : Set Point := {pt 0 0, pt 2 0, pt 0 2, pt 2 2}
structure IsSquare' (A B C D : Point) : Prop where
  side_pos : dist A B > 0
  eq_AB_BC : dist A B = dist B C
  eq_BC_CD : dist B C = dist C D
  eq_CD_DA : dist C D = dist D A
  right_angle : inner ℝ (B -ᵥ A) (D -ᵥ A) = 0
  diag : C = B + (D -ᵥ A)
def PointOnSegment (p a b : Point) : Prop :=
  ∃ (t : ℝ), 0 ≤ t ∧ t ≤ 1 ∧ p = (1 - t) • a + t • b
def distances_A_to_P : Set ℝ :=
  { d | ∃ (W : Point) (X : Point) (Y : Point) (Z : Point)
        (_ : W ∈ V_TL) (_ : X ∈ V_TR) (_ : Y ∈ V_BR) (_ : Z ∈ V_BL)
        (A B C D : Point) (_ : IsSquare' A B C D),
      PointOnSegment W D A ∧
      PointOnSegment X A B ∧
      PointOnSegment Y B C ∧
      PointOnSegment Z C D ∧
      d = dist A P_coord }
theorem max_dist_A_P_is_6 : sSup (distances_A_to_P) = 6 := by sorry
