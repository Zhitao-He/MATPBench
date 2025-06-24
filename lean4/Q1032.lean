import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Sphere.Basic
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem three_chords_intersect_at_60_degrees
  (O P A B C D E F : Point)
  (r : ℝ)
  (h_r_pos : 0 < r)
  (hA : A ∈ EuclideanGeometry.Sphere.mk O r)
  (hB : B ∈ EuclideanGeometry.Sphere.mk O r)
  (hC : C ∈ EuclideanGeometry.Sphere.mk O r)
  (hD : D ∈ EuclideanGeometry.Sphere.mk O r)
  (hE : E ∈ EuclideanGeometry.Sphere.mk O r)
  (hF : F ∈ EuclideanGeometry.Sphere.mk O r)
  (hP_AB : Sbtw ℝ A P B)
  (hP_CD : Sbtw ℝ C P D)
  (hP_EF : Sbtw ℝ E P F)
  (h_angle_AB_CD : EuclideanGeometry.angle A P C = Real.pi / 3)
  (h_angle_CD_EF : EuclideanGeometry.angle C P E = Real.pi / 3)
  (h_angle_EF_AB : EuclideanGeometry.angle E P A = Real.pi / 3)
  : dist A P + dist E P + dist D P = dist C P + dist B P + dist F P := by
  sorry
