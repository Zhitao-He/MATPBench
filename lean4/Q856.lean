import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem angle_CHA_is_90_degrees
  (A B C E G H : P)
  (hE_ne_A : E ≠ A)
  (hH_ne_A : H ≠ A)
  (hG_ne_E : G ≠ E)
  (hB_ne_E : B ≠ E)
  (hA_ne_H : A ≠ H)
  (hE_ne_H : E ≠ H)
  (hC_ne_H : C ≠ H)
  (hEAH_val : EuclideanGeometry.angle E A H = (38 / 180 : ℝ) * π)
  (hGEB_val : EuclideanGeometry.angle G E B = (52 / 180 : ℝ) * π)
  (h_AH_perp_EH : EuclideanGeometry.angle A H E = π / 2)
  (h_collinear_CHE : Collinear ℝ ({C, H, E} : Set P))
  (h_H_between_C_E : ¬SameRay ℝ (H -ᵥ C) (H -ᵥ E))
  (hA_not_on_line_CHE : A ∉ affineSpan ℝ ({C, H, E} : Set P))
  : EuclideanGeometry.angle C H A = π / 2 :=
  by sorry
