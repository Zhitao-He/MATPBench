import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
theorem target_angle_value
  (G B A C D O : PPoint)
  (x r : ℝ)
  (hA_on_circle : A ∈ EuclideanGeometry.Sphere.mk O r)
  (hB_on_circle : B ∈ EuclideanGeometry.Sphere.mk O r)
  (hC_on_circle : C ∈ EuclideanGeometry.Sphere.mk O r)
  (hD_on_circle : D ∈ EuclideanGeometry.Sphere.mk O r)
  (h_angle_DCG : EuclideanGeometry.angle D C G = degToRad (3 * x))
  (h_angle_GBA : EuclideanGeometry.angle G B A = degToRad (x + 24))
  (h_ncol_DCG : ¬ Collinear ℝ ({D, C, G} : Set PPoint))
  (h_ncol_GBA : ¬ Collinear ℝ ({G, B, A} : Set PPoint))
  (h_angle_DCG_range : 0 < 3 * x ∧ 3 * x < 180)
  (h_angle_GBA_range : 0 < x + 24 ∧ x + 24 < 180) :
  x + 24 = 36 := by
  sorry
