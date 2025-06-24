import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (deg : ℝ) : ℝ := deg * Real.pi / 180
namespace GeometryProblem
theorem inscribed_angle_theorem_specific_case
  (A B C D O : Point) (r : ℝ)
  (h_r_positive : 0 < r)
  (hA_on_circle : A ∈ Metric.sphere O r)
  (hB_on_circle : B ∈ Metric.sphere O r)
  (h_AB_is_diameter : O = midpoint ℝ A B)
  (hC_on_circle : C ∈ Metric.sphere O r)
  (hD_on_circle : D ∈ Metric.sphere O r)
  (h_angle_ADC_eq_26_deg : ∠ A D C = degToRad 26) :
  ∠ C A B = degToRad 64 := by
  sorry
end GeometryProblem
