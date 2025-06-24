import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open Real
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def deg_to_rad (d : ℝ) : ℝ := d * (Real.pi / 180)
noncomputable def rad_to_deg (r : ℝ) : ℝ := r * (180 / Real.pi)
theorem inscribed_hexagon_alpha_is_145_degrees
    (A B C D E F : P)
    (Ω : EuclideanGeometry.Sphere P) 
    (hA : A ∈ Ω) (hB : B ∈ Ω) (hC : C ∈ Ω)
    (hD : D ∈ Ω) (hE : E ∈ Ω) (hF : F ∈ Ω) 
    (h_angle_C : ∠ B C D = deg_to_rad 110) 
    (h_angle_E : ∠ D E F = deg_to_rad 105) 
    : rad_to_deg (∠ F A B) = 145 := by 
  sorry
