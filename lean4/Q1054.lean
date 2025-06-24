import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.Convex.Segment
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def IsRightAngle (A B C : P) : Prop := inner ℝ (A -ᵥ B) (C -ᵥ B) = 0
theorem inscribedRectangle_fle_is_right_angle
    (A B C D O K E F L : P)
    (r : ℝ) (hr_pos : r > 0)
    (Ω : Set P := Metric.sphere O r)
    (hA_on_Ω : A ∈ Ω)
    (hB_on_Ω : B ∈ Ω)
    (hC_on_Ω : C ∈ Ω)
    (hD_on_Ω : D ∈ Ω)
    (h_midpoint_AC : midpoint ℝ A C = O)
    (h_midpoint_BD : midpoint ℝ B D = O)
    (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_D : C ≠ D) (hD_ne_A : D ≠ A)
    (hK_ne_A : K ≠ A) (hK_ne_B : K ≠ B) (hK_ne_C : K ≠ C) (hK_ne_D : K ≠ D)
    (hE_collinear_BK : Collinear ℝ ({B, K, E} : Set P))
    (hE_collinear_CD : Collinear ℝ ({C, D, E} : Set P))
    (hE_on_segment_CD : E ∈ segment ℝ C D)
    (hF_collinear_DK : Collinear ℝ ({D, K, F} : Set P))
    (hF_collinear_BC : Collinear ℝ ({B, C, F} : Set P))
    (hF_on_segment_BC : F ∈ segment ℝ B C)
    (hL_on_Ω : L ∈ Ω)
    (hL_collinear_AK : Collinear ℝ ({A, K, L} : Set P))
    (hL_ne_A : L ≠ A)
    (hF_ne_L : F ≠ L)
    (hE_ne_L : E ≠ L)
    : IsRightAngle F L E := by
  sorry
