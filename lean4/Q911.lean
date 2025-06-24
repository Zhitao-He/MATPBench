import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (A B C D E F : P)
variable (Ω : EuclideanGeometry.Sphere P)
variable (x : ℝ)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
variable (h_center_A : Ω.center = A)
variable (hC_on_Ω : C ∈ Ω)
variable (hD_on_Ω : D ∈ Ω)
variable (hE_on_Ω : E ∈ Ω)
variable (hF_on_Ω : F ∈ Ω)
variable (h_radius_pos : Ω.radius > 0)
variable (h_angle_EBF : EuclideanGeometry.angle E B F = degToRad 26)
variable (h_angle_ACD : EuclideanGeometry.angle A C D = degToRad 89)
variable (h_angle_AEF : EuclideanGeometry.angle A E F = degToRad x)
variable (h_collinear_BFC : Collinear ℝ ({B, F, C} : Set P))
variable (h_collinear_BED : Collinear ℝ ({B, E, D} : Set P))
theorem prove_value_of_x
  (A B C D E F : P)
  (Ω : EuclideanGeometry.Sphere P)
  (x : ℝ)
  (h_center_A : Ω.center = A)
  (hC_on_Ω : C ∈ Ω)
  (hD_on_Ω : D ∈ Ω)
  (hE_on_Ω : E ∈ Ω)
  (hF_on_Ω : F ∈ Ω)
  (h_radius_pos : Ω.radius > 0)
  (h_angle_EBF : EuclideanGeometry.angle E B F = degToRad 26)
  (h_angle_ACD : EuclideanGeometry.angle A C D = degToRad 89)
  (h_angle_AEF : EuclideanGeometry.angle A E F = degToRad x)
  (h_collinear_BFC : Collinear ℝ ({B, F, C} : Set P))
  (h_collinear_BED : Collinear ℝ ({B, E, D} : Set P)) :
  x = 37 := by sorry
end
