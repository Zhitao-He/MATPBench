import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.Dimension.Finite
open Real EuclideanGeometry
open Module
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (deg : ℝ) : ℝ := deg * π / 180
theorem find_angle_BKE
  (B C D E G K : P)
  (Ω : EuclideanGeometry.Sphere P)
  (hB_ne_C : B ≠ C)
  (hB_ne_E : B ≠ E)
  (hC_ne_D : C ≠ D)
  (hD_ne_E : D ≠ E)
  (h_center_G : Ω.center = G)
  (h_radius_pos : 0 < Ω.radius)
  (hB_on_Ω : B ∈ Ω)
  (hC_on_Ω : C ∈ Ω)
  (hD_on_Ω : D ∈ Ω)
  (hE_on_Ω : E ∈ Ω)
  (hK_sbtw_BD : Sbtw ℝ B K D)
  (hK_sbtw_CE : Sbtw ℝ C K E)
  (h_angle_CBD : EuclideanGeometry.angle C B D = degToRad 12)
  (h_angle_GEB : EuclideanGeometry.angle G E B = degToRad 28)
  :
  EuclideanGeometry.angle B K E = degToRad 26 :=
by
  sorry
