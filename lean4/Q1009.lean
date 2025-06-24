import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem tangent_secant_perpendicular_lines
  (O A B C D E F : Point)
  (Ω : EuclideanGeometry.Sphere Point)
  (hΩ_center : Ω.center = O)
  (hΩ_radius_pos : Ω.radius > 0)
  (hA_on_Ω : A ∈ Ω)
  (hB_on_Ω : B ∈ Ω)
  (hA_ne_B : A ≠ B)
  (hAB_diam : O = midpoint ℝ A B)
  (hCB_tangent : inner ℝ (C -ᵥ B) (O -ᵥ B) = 0)
  (hD_on_Ω : D ∈ Ω)
  (hD_ne_A : D ≠ A)
  (hD_ne_B : D ≠ B)
  (hF_on_Ω : F ∈ Ω)
  (hF_on_CD : F ≠ D ∧ F ∈ line[ℝ, C, D])
  (hE_on_AD : ∃ t : ℝ, E = (1-t) • A + t • D ∧ E ∈ line[ℝ, A, D])
  (hE_on_OC : ∃ s : ℝ, E = (1-s) • O + s • C ∧ E ∈ line[ℝ, O, C])
  (hE_ne_B : E ≠ B)
  (hF_ne_B : F ≠ B) :
  inner ℝ (E -ᵥ B) (F -ᵥ B) = 0 := by
  sorry
