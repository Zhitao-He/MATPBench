import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry Angle
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
theorem inscribedAngleProblem
  (O A B C D : PPoint)
  (r : ℝ)
  (hr : 0 < r)
  (hA : A ∈ Metric.sphere O r)
  (hB : B ∈ Metric.sphere O r)
  (hC : C ∈ Metric.sphere O r)
  (hD : D ∈ Metric.sphere O r)
  (hBA : B ≠ A)
  (hBC : B ≠ C)
  (hBD : B ≠ D)
  (hAC : A ≠ C)
  (hAD : A ≠ D)
  (hCD : C ≠ D)
  (h_diam : (A -ᵥ O) = -(B -ᵥ O))
  (h_angle_BCD : angle B C D = degToRad 25)
  : angle A O D = degToRad 130 :=
by
  sorry
