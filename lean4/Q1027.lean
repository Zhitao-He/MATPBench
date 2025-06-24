import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem FM_eq_FN
  (A B C O D E F M N : Point)
  (r : ℝ)
  (Ω : EuclideanGeometry.Sphere Point)
  (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_A : C ≠ A)
  (hABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hr_pos : 0 < r) 
  (hΩ_center_radius : Ω.center = O ∧ Ω.radius = r) 
  (hA_on_Ω : A ∈ Ω) (hB_on_Ω : B ∈ Ω) (hC_on_Ω : C ∈ Ω)
  (hD_on_Ω : D ∈ Ω) (hA_ne_D : A ≠ D)
  (h_AD_bisects_BAC : EuclideanGeometry.angle B A D = EuclideanGeometry.angle D A C)
  (hE_midpoint_BC : E = midpoint ℝ B C)
  (hE_ne_F : E ≠ F)
  (hEF_perp_AD : inner ℝ (F -ᵥ E) (D -ᵥ A) = 0)
  (hD_ne_F : D ≠ F)
  (hM_ne_N : M ≠ N)
  (hF_on_LineMN : F ∈ line[ℝ, M, N])
  (hLineMN_perp_DF : inner ℝ (N -ᵥ M) (F -ᵥ D) = 0)
  (hM_on_LineAB : M ∈ line[ℝ, A, B])
  (hN_on_LineAC : N ∈ line[ℝ, A, C])
  : dist F M = dist F N := by
  sorry
