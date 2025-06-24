import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem length_of_chord_AB_from_inscribed_angle
  (O A B C : Point)
  (hA_on_circle : A ∈ Metric.sphere O 2)
  (hB_on_circle : B ∈ Metric.sphere O 2)
  (hC_on_circle : C ∈ Metric.sphere O 2)
  (h_angle_ACB : ∠ A C B = π / 6)
  (hA_ne_C : A ≠ C)
  (hB_ne_C : B ≠ C)
  (hA_ne_B : A ≠ B) :
  dist A B = 2 := by
  sorry
