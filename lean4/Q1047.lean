import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem inscribed_quadrilateral_angle_bisector_property
  (O A B C D E F G : Point)
  (r : ℝ)
  (h_r_pos : 0 < r)
  (hA_on_circle : A ∈ EuclideanGeometry.Sphere.mk O r)
  (hB_on_circle : B ∈ EuclideanGeometry.Sphere.mk O r)
  (hC_on_circle : C ∈ EuclideanGeometry.Sphere.mk O r)
  (hD_on_circle : D ∈ EuclideanGeometry.Sphere.mk O r)
  (hE_inside_circle : dist E O < r)
  (hE_ne_A : E ≠ A) (hA_ne_B : A ≠ B)
  (hE_ne_C : E ≠ C) (hC_ne_D : C ≠ D)
  (hE_ne_B : E ≠ B)
  (hE_ne_D : E ≠ D)
  (h_angle_EAB_eq_ECD : EuclideanGeometry.angle E A B = EuclideanGeometry.angle E C D)
  (h_angle_EBA_eq_EDC : EuclideanGeometry.angle E B A = EuclideanGeometry.angle E D C)
  (hF_on_circle : F ∈ EuclideanGeometry.Sphere.mk O r)
  (hG_on_circle : G ∈ EuclideanGeometry.Sphere.mk O r)
  (hF_ne_G : F ≠ G)
  (h_BEC_not_collinear : ¬ Collinear ℝ ({B, E, C} : Set Point))
  (h_FG_bisects_BEC : EuclideanGeometry.angle B E F = EuclideanGeometry.angle G E C)
  : dist E F = dist E G := by
  sorry
