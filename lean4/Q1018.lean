import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def circumradius (A B C : Point) : ℝ := sorry
noncomputable def orthogonalProjection (l : AffineSubspace ℝ Point) (p : Point) : Point := sorry
theorem line_IF_bisects_angle_BFC
  (A B C I J_center D E F : Point)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (h_A_ne_I : A ≠ I) (h_B_ne_I : B ≠ I) (h_C_ne_I : C ≠ I)
  (h_I_bisects_BAC : EuclideanGeometry.angle B A I = EuclideanGeometry.angle I A C)
  (h_I_bisects_ABC : EuclideanGeometry.angle A B I = EuclideanGeometry.angle I B C)
  (h_I_bisects_BCA : EuclideanGeometry.angle B C I = EuclideanGeometry.angle I C A)
  (J_radius : ℝ)
  (h_J_radius_pos : J_radius > 0)
  (h_D_on_line_AB : D ∈ line[ℝ, A, B])
  (h_J_center_proj_AB_is_D : orthogonalProjection (line[ℝ, A, B]) J_center = D)
  (h_D_on_Ω_J : D ∈ EuclideanGeometry.Sphere.mk J_center J_radius)
  (h_E_on_line_AC : E ∈ line[ℝ, A, C])
  (h_J_center_proj_AC_is_E : orthogonalProjection (line[ℝ, A, C]) J_center = E)
  (h_E_on_Ω_J : E ∈ EuclideanGeometry.Sphere.mk J_center J_radius)
  (h_F_on_Ω_O : F ∈ EuclideanGeometry.Sphere.mk (circumcenter A B C) (circumradius A B C))
  (h_F_on_Ω_J : F ∈ EuclideanGeometry.Sphere.mk J_center J_radius)
  (h_J_radius_lt_O_radius : J_radius < circumradius A B C)
  (h_J_center_on_segment_OF : J_center ∈ segment ℝ (circumcenter A B C) F)
  (h_F_ne_B : F ≠ B) (h_F_ne_C : F ≠ C) (h_I_ne_F : I ≠ F)
  : EuclideanGeometry.angle B F I = EuclideanGeometry.angle I F C := by sorry
