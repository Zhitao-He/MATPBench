import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
noncomputable section
abbrev P := EuclideanSpace ℝ (Fin 2)
section
theorem measure_arc_AE_eq_90_degrees
  (O A B C D E F : P)
  (r : ℝ)
  (Ω : EuclideanGeometry.Sphere P)
  (hΩ_center : Ω.center = O)
  (hΩ_radius : Ω.radius = r)
  (hr_pos : 0 < r)
  (hA_on_Ω : A ∈ Ω)
  (hB_on_Ω : B ∈ Ω)
  (hC_on_Ω : C ∈ Ω)
  (hD_on_Ω : D ∈ Ω)
  (hE_on_Ω : E ∈ Ω)
  (hF_on_Ω : F ∈ Ω)
  (hEC_diameter : C -ᵥ O = -(E -ᵥ O))
  (hAB_diameter : B -ᵥ O = -(A -ᵥ O))
  (h_angle_BOD_eq_DOE : EuclideanGeometry.angle B O D = EuclideanGeometry.angle D O E)
  (h_angle_DOE_eq_EOF : EuclideanGeometry.angle D O E = EuclideanGeometry.angle E O F)
  (h_angle_EOF_eq_FOA : EuclideanGeometry.angle E O F = EuclideanGeometry.angle F O A)
  (h_sbtw_BDE : Sbtw ℝ B D E)
  (h_sbtw_DEF : Sbtw ℝ D E F)
  (h_sbtw_EFA : Sbtw ℝ E F A) :
  EuclideanGeometry.angle A O E = Real.pi / 2 := by sorry
end
end
