import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry Real InnerProductSpace Angle
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable instance : NormedAddTorsor P P := inferInstance
noncomputable def instEuclid : InnerProductSpace ℝ P := inferInstance
theorem inscribed_quadrilateral_angle_bisector_property
  (O A B C D E F G : P)
  (r : ℝ)
  (ω : EuclideanGeometry.Sphere P)
  (hr_pos : 0 < r)
  (hω_center : ω.center = O)
  (hω_radius : ω.radius = r)
  (hA_ne_B : A ≠ B)
  (hB_ne_C : B ≠ C)
  (hC_ne_D : C ≠ D)
  (hD_ne_A : D ≠ A)
  (hA_ne_C : A ≠ C)
  (hB_ne_D : B ≠ D)
  (hA_on_ω : A ∈ ω)
  (hB_on_ω : B ∈ ω)
  (hC_on_ω : C ∈ ω)
  (hD_on_ω : D ∈ ω)
  (hE_ne_A : E ≠ A)
  (hE_ne_B : E ≠ B)
  (hE_ne_C : E ≠ C)
  (hE_ne_D : E ≠ D)
  (hE_inside_ω : dist E O < r)
  (h_angle_EAB_eq_ECD : EuclideanGeometry.angle E A B = EuclideanGeometry.angle E C D)
  (h_angle_EBA_eq_EDC : EuclideanGeometry.angle E B A = EuclideanGeometry.angle E D C)
  (h_collinear_FEG : Collinear ℝ ({F, E, G} : Set P))
  (hF_on_ω : F ∈ ω)
  (hG_on_ω : G ∈ ω)
  (hF_ne_E : F ≠ E)
  (hG_ne_E : G ≠ E)
  (hF_ne_G : F ≠ G)
  (h_BEC_non_collinear : ¬ Collinear ℝ ({B, E, C} : Set P))
  (h_FG_bisects_BEC : EuclideanGeometry.angle B E F = EuclideanGeometry.angle C E F)
  :
  dist E F = dist E G :=
by
  sorry
