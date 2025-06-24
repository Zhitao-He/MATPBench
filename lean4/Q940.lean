import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Sphere.Basic 
import Mathlib.Geometry.Euclidean.Sphere.Tangent 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Analysis.Convex.Side 
import Mathlib.Geometry.Euclidean.Circumcenter 
open Real EuclideanGeometry Affine AffineSubspace EuclideanGeometry.Sphere 
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem quadrilateral_tangent_circles_concyclic
    (A B C D E F P Q : PPoint)
    (O₁ O₂ : PPoint) (r₁ r₂ : ℝ)
    (hA_ne_B : A ≠ B) (hA_ne_C : A ≠ C) (hA_ne_D : A ≠ D)
    (hB_ne_C : B ≠ C) (hB_ne_D : B ≠ D) (hC_ne_D : C ≠ D)
    (h_noncol_ABC : ¬Collinear ℝ ({A, B, C} : Set PPoint))
    (h_noncol_BCD : ¬Collinear ℝ ({B, C, D} : Set PPoint))
    (h_noncol_CDA : ¬Collinear ℝ ({C, D, A} : Set PPoint))
    (h_noncol_DAB : ¬Collinear ℝ ({D, A, B} : Set PPoint))
    (h_convex_AC : ¬(affineSpan ℝ ({A, C} : Set PPoint)).WSameSide B D)
    (h_convex_BD : ¬(affineSpan ℝ ({B, D} : Set PPoint)).WSameSide A C)
    (h_bisect : EuclideanGeometry.angle B A C = EuclideanGeometry.angle D A C)
    (hE_on_BC : E ∈ segment ℝ B C)
    (hF_on_CD : F ∈ segment ℝ C D)
    (hE_ne_F : E ≠ F)
    (hEF_parallel_BD : line[ℝ, E, F] ∥ line[ℝ, B, D])
    (hP_extends_FA : Sbtw ℝ F A P)
    (hQ_extends_EA : Sbtw ℝ E A Q)
    (hABP_noncol : ¬Collinear ℝ ({A, B, P} : Set PPoint))
    (hO₁_def : ∀ X ∈ ({A, B, P} : Set PPoint), dist X O₁ = r₁)
    (h_omega1_tangent_AC :
      IsTangentAt (EuclideanGeometry.Sphere.mk O₁ r₁) A (line[ℝ, A, C]))
    (hADQ_noncol : ¬Collinear ℝ ({A, D, Q} : Set PPoint))
    (hO₂_def : ∀ X ∈ ({A, D, Q} : Set PPoint), dist X O₂ = r₂)
    (h_omega2_tangent_AC :
      IsTangentAt (EuclideanGeometry.Sphere.mk O₂ r₂) A (line[ℝ, A, C])) :
    Concyclic ({B, P, Q, D} : Set PPoint) :=
  by
    sorry
lemma imo_2000_p1 (A B C P Q : PPoint) (Ω : Sphere PPoint)
  (hA_on_Ω : A ∈ Ω) (hB_on_Ω : B ∈ Ω) (hC_on_Ω : C ∈ Ω) (hP_on_Ω : P ∈ Ω) (hQ_on_Ω : Q ∈ Ω)
  (hAB_ne_CD : sorry) (hAC_ne_PQ : sorry) (hAD_ne_BC : sorry)
  (hM_on_line_AB : sorry) (hN_on_line_CD : sorry)
  (hM_midpoint_AB : sorry) (hN_midpoint_CD : sorry)
  (hK_on_line_AC : sorry) (hL_on_line_PQ : sorry)
  (hK_midpoint_AC : sorry) (hL_midpoint_PQ : sorry)
  (hX_on_line_AD : sorry) (hY_on_line_BC : sorry)
  (hX_midpoint_AD : sorry) (hY_midpoint_BC : sorry)
  (hO_center_Ω : sorry)
  (h_collinear_ABP : Collinear ℝ ({A, B, P} : Set PPoint))
  (h_collinear_ADQ : Collinear ℝ ({A, D, Q} : Set PPoint))
  (hABP_noncol : ¬ Collinear ℝ ({A, B, P} : Set PPoint))
  (hADQ_noncol : ¬ Collinear ℝ ({A, D, Q} : Set PPoint)) :
  (IsTangentAt (EuclideanGeometry.Sphere.mk O₁ r₁) A (line[ℝ, A, C])) ↔
  (IsTangentAt (EuclideanGeometry.Sphere.mk O₂ r₂) A (line[ℝ, A, C])) := by
  sorry
