import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (O G H V₁ : P)
variable (r : ℝ) (hr_pos : r > 0)
variable (Ω : EuclideanGeometry.Sphere P := EuclideanGeometry.Sphere.mk O r)
variable (hG : G ∈ Ω)
variable (hH : H ∈ Ω)
variable (hV₁ : V₁ ∈ Ω)
variable (hGH : G ≠ H)
variable (hV₁G : V₁ ≠ G)
variable (hV₁H : V₁ ≠ H)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
variable (h_central : EuclideanGeometry.angle G O H = degreesToRadians 78)
theorem inscribed_angle_measure :
    EuclideanGeometry.angle G V₁ H = degreesToRadians 39 := by
  sorry
end
