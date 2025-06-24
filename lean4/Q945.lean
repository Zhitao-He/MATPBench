import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
open Real EuclideanGeometry InnerProductSpace Affine AffineSubspace
open scoped EuclideanGeometry
theorem ap_tangent_to_circumcircle_pck
  [InnerProductSpace ℝ (EuclideanSpace ℝ (Fin 2))]
  (O A B C D E F K P_pt : EuclideanSpace ℝ (Fin 2))
  (Ω_O : EuclideanGeometry.Sphere (EuclideanSpace ℝ (Fin 2)))
  (h_O_center : Ω_O.center = O)
  (hA_on_Ω_O : A ∈ Ω_O)
  (hB_on_Ω_O : B ∈ Ω_O)
  (hO_midpoint_AB : O = midpoint ℝ A B)
  (h_Ω_O_radius_pos : 0 < Ω_O.radius)
  (hB_sbtw_A_P_pt : Sbtw ℝ A B P_pt)
  (hC_on_Ω_O : C ∈ Ω_O)
  (hP_pt_ne_C : P_pt ≠ C)
  (hP_ptC_tangent_Ω_O : inner ℝ (O -ᵥ C) (P_pt -ᵥ C) = 0)
  (hC_ne_A : C ≠ A)
  (hC_ne_B : C ≠ B)
  (hA_ne_D : A ≠ D)
  (hF_midpoint_CE : F = midpoint ℝ C E)
  (hK_collinear_AFK : Collinear ℝ ({A, F, K} : Set (EuclideanSpace ℝ (Fin 2))))
  (hK_on_Ω_O : K ∈ Ω_O)
  (hK_ne_A : K ≠ A)
  (hA_ne_F : A ≠ F)
  (h_P_pt_C_K_NonCollinear : ¬ Collinear ℝ ({P_pt, C, K} : Set (EuclideanSpace ℝ (Fin 2))))
  (center : EuclideanSpace ℝ (Fin 2))
  : inner ℝ (center -ᵥ P_pt) (A -ᵥ P_pt) = 0 :=
by
  sorry
