import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def circleD (D : P) (r : ℝ) : EuclideanGeometry.Sphere P := EuclideanGeometry.Sphere.mk D r
lemma inscribed_angle_theorem
  (A B C D : P)
  (r : ℝ) (hr_pos : r > 0)
  (hA_on : A ∈ circleD D r)
  (hB_on : B ∈ circleD D r)
  (hC_on : C ∈ circleD D r)
  (hB_ne_A : B ≠ A) (hB_ne_C : B ≠ C)
  (h_angle_ne_pi : EuclideanGeometry.angle A D C ≠ π)
  : EuclideanGeometry.angle A D C = 2 * EuclideanGeometry.angle A B C :=
by
  sorry
theorem measure_of_angle_ABC_is_30_degrees
  (A B C D : P)
  (r : ℝ) (hr_pos : r > 0)
  (hA_on : A ∈ circleD D r)
  (hB_on : B ∈ circleD D r)
  (hC_on : C ∈ circleD D r)
  (hB_ne_A : B ≠ A) (hB_ne_C : B ≠ C)
  (h_angle_ADC : EuclideanGeometry.angle A D C = π / 3)
  : EuclideanGeometry.angle A B C = π / 6 :=
by
  sorry
