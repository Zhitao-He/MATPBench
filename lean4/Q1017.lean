import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
def goal1 (M A N : Point) : Prop := Collinear ℝ ({M, A, N} : Set Point)
def goal2 (M N A D : Point) : Prop := inner ℝ (N -ᵥ M) (D -ᵥ A) = 0
theorem problem_statement
  (A B C D E F G M N : Point)
  (hABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hD_between_BC : Sbtw ℝ B D C)
  (hAD_bisects_BAC : EuclideanGeometry.angle B A D = EuclideanGeometry.angle D A C)
  (hE_between_AB : Sbtw ℝ A E B)
  (hDE_bisects_ADB : EuclideanGeometry.angle A D E = EuclideanGeometry.angle E D B)
  (hF_between_AC : Sbtw ℝ A F C)
  (hDF_bisects_ADC : EuclideanGeometry.angle A D F = EuclideanGeometry.angle F D C)
  (hG_on_EF : G ∈ line[ℝ, E, F])
  (hG_on_AD : G ∈ line[ℝ, A, D])
  (hM_on_BG : M ∈ line[ℝ, B, G])
  (hM_on_DF : M ∈ line[ℝ, D, F])
  (hN_on_CG : N ∈ line[ℝ, C, G])
  (hN_on_DE : N ∈ line[ℝ, D, E])
  : goal1 M A N ∧ goal2 M N A D := by
  sorry
