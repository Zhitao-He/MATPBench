import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev P := EuclideanSpace ℝ (Fin 2)
open Real EuclideanGeometry
noncomputable def angleEFA_rad : ℝ := (63 / 180 : ℝ) * π
noncomputable def angleDFE_rad : ℝ := (90 / 180 : ℝ) * π
noncomputable def measureArcFAD_deg (F A D : P) : ℝ := (EuclideanGeometry.angle A F D) * (180 / π)
theorem measure_arc_FAD_value
  (F A D E : P) (Ω : EuclideanGeometry.Sphere P)
  (h_center : Ω.center = F)
  (hA_on : A ∈ Ω) (hD_on : D ∈ Ω) (h_radius_pos : Ω.radius > 0)
  (h_angleEFA : EuclideanGeometry.angle E F A = (63 / 180 : ℝ) * π)
  (h_angleDFE : EuclideanGeometry.angle D F E = (90 / 180 : ℝ) * π)
  (h_angle_add : EuclideanGeometry.angle D F A = EuclideanGeometry.angle D F E + EuclideanGeometry.angle E F A) :
  measureArcFAD_deg F A D = 153 := by
  sorry
