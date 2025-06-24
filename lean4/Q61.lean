import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open Real EuclideanGeometry
noncomputable abbrev P := EuclideanSpace ℝ (Fin 2)
namespace ProblemGeoThales
noncomputable def target_angle_BAD_rad : ℝ := (50 / 180 : ℝ) * Real.pi
theorem inscribed_triangle_AB_diameter_implies_angle_BAD
  (A B C D O : P)
  (r : ℝ)
  (hr_positive : 0 < r)
  (hA_on_circle : A ∈ EuclideanGeometry.Sphere.mk O r)
  (hB_on_circle : B ∈ EuclideanGeometry.Sphere.mk O r)
  (hC_on_circle : C ∈ EuclideanGeometry.Sphere.mk O r)
  (hAB_diameter : O = midpoint ℝ A B)
  (hD_on_circle : D ∈ EuclideanGeometry.Sphere.mk O r)
  (h_angle_ACD : EuclideanGeometry.angle A C D = (40 / 180 : ℝ) * Real.pi)
  : EuclideanGeometry.angle B A D = target_angle_BAD_rad := by
  sorry
end ProblemGeoThales
