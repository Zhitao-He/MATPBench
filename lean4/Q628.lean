import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry Affine AffineSubspace
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem perimeter_value
  (A B C D H I : PPoint)
  (hA_ne_B : A ≠ B)
  (hB_ne_C : B ≠ C)
  (hC_ne_D : C ≠ D)
  (hD_ne_A : D ≠ A)
  (hC_ne_H : C ≠ H)
  (hI_ne_H : I ≠ H)
  (hB_ne_I : B ≠ I)
  (hAD : dist A D = 27)
  (hBA_eq_CD : dist B A = dist C D)
  (hCH : dist C H = 7)
  (h_angle_ABC : EuclideanGeometry.angle A B C = 3 * Real.pi / 4)
  (h_IH_parallel_BC : line[ℝ, I, H] ∥ line[ℝ, B, C])
  (h_CH_perp_IH : EuclideanGeometry.angle C H I = Real.pi / 2)
  (h_HI_perp_BI : EuclideanGeometry.angle H I B = Real.pi / 2) :
  dist A B + dist B C + dist C D + dist D A = 14 * Real.sqrt 2 + 40 := by
  sorry
