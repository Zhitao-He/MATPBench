import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
theorem find_angle_BEA
  (A B C D E : PPoint)
  (hB_ne_D : B ≠ D)
  (hE_ne_D : E ≠ D)
  (hC_ne_A : C ≠ A)
  (hA_ne_E : A ≠ E)
  (hE_ne_B : E ≠ B)
  (hD_ne_B : D ≠ B)
  (hA_ne_B : A ≠ B)
  (hBDE : angle B D E = (35 / 180 : ℝ) * Real.pi)
  (hCAE : angle C A E = (28 / 180 : ℝ) * Real.pi)
  (hEBD : angle E B D = (75 / 180 : ℝ) * Real.pi)
  (hDEA_flat : angle D E A = Real.pi)
  (hBDE_nondeg : ¬ Collinear ℝ ({B, D, E} : Set PPoint))
  : angle B E A = (110 / 180 : ℝ) * Real.pi :=
by
  sorry
