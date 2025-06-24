import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.Convex.Side
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def circumradius (A B C : Point) : ℝ := sorry
noncomputable def perpendicularBisector (A B : Point) : Set Point := sorry
noncomputable def orthogonalProjection (l : AffineSubspace ℝ Point) (p : Point) : Point := sorry
noncomputable def IsExternallyTangent (S₁ S₂ : EuclideanGeometry.Sphere Point) : Prop := sorry
theorem circles_externally_tangent_at_F
  (A B C D E F O_center P_center Q_center : Point)
  (r_O r_P r_Q : ℝ)
  (h_r_O_pos : 0 < r_O)
  (hA_on_O : A ∈ EuclideanGeometry.Sphere.mk O_center r_O)
  (hB_on_O : B ∈ EuclideanGeometry.Sphere.mk O_center r_O)
  (hC_on_O : C ∈ EuclideanGeometry.Sphere.mk O_center r_O)
  (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_A : C ≠ A)
  (hD_ne_C : D ≠ C) (hD_ne_E : D ≠ E)
  (hDC_perp_AC : inner ℝ (D -ᵥ C) (A -ᵥ C) = 0)
  (hD_on_extension_AB : Sbtw ℝ A B D ∨ Sbtw ℝ D A B)
  (hDE_perp_AO : inner ℝ (D -ᵥ E) (A -ᵥ O_center) = 0)
  (hE_on_AC : Collinear ℝ ({A, C, E} : Set Point))
  (hE_ne_A : E ≠ A) (hE_ne_C : E ≠ C)
  (hF_on_DE : Collinear ℝ ({D, E, F} : Set Point))
  (hF_ne_D : F ≠ D) (hF_ne_E : F ≠ E)
  (hF_on_O : F ∈ EuclideanGeometry.Sphere.mk O_center r_O)
  (hBEF_not_collinear : ¬Collinear ℝ ({B, E, F} : Set Point))
  (hP_is_circumcircle :
      P_center = circumcenter B E F ∧
      r_P = circumradius B E F)
  (hCDF_not_collinear : ¬Collinear ℝ ({C, D, F} : Set Point))
  (hQ_is_circumcircle :
      Q_center = circumcenter C D F ∧
      r_Q = circumradius C D F) :
  IsExternallyTangent (EuclideanGeometry.Sphere.mk P_center r_P) (EuclideanGeometry.Sphere.mk Q_center r_Q) ∧
  Set.inter (EuclideanGeometry.Sphere.mk P_center r_P) (EuclideanGeometry.Sphere.mk Q_center r_Q) = {F} := by
  sorry
