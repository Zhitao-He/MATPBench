import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
theorem angle_EDC_measure
  (A B C D E H : PPoint)
  (Ω : EuclideanGeometry.Sphere PPoint)
  (h_center_is_H : Ω.center = H)
  (hA_on_circle : A ∈ Ω)
  (hB_on_circle : B ∈ Ω)
  (hC_on_circle : C ∈ Ω)
  (hD_on_circle : D ∈ Ω)
  (hE_on_AD_segment : E ∈ segment ℝ A D)
  (hE_is_not_A : E ≠ A)
  (hE_is_not_D : E ≠ D)
  (hE_on_BC_segment : E ∈ segment ℝ B C)
  (hE_is_not_B : E ≠ B)
  (hE_is_not_C : E ≠ C)
  (hA_ne_B : A ≠ B)
  (hC_ne_D : C ≠ D)
  (h_not_collinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set PPoint))
  (h_not_collinear_ADC : ¬ Collinear ℝ ({A, D, C} : Set PPoint))
  (h_angle_ABE_measure : angle A B E = (32 / 180) * Real.pi)
  : angle E D C = (32 / 180) * Real.pi :=
by
  sorry
