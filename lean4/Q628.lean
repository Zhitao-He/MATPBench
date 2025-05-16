import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Pi.Basic

noncomputable section

open EuclideanGeometry

-- Let points A, B, C, D, H, I be in the Euclidean plane.
variables (A B C D H I : EuclideanSpace ℝ (Fin 2))

-- Problem statement:
-- Given: AD=27, BA=CD, CH=7, ∠ABC=135°, IH∥BC, CH ⟂ IH, HI ⟂ BI.
-- Find Perimeter(ABCD) = 14 * sqrt(2) + 40.

example
  (h_AD : dist A D = 27)
  (h_BA_eq_CD : dist B A = dist C D)
  (h_CH : dist C H = 7)
  (h_angle_ABC : Angle.Unoriented.value A B C = 3 * Real.pi / 4)
  (h_IH_parallel_BC : Line.isParallel (Line.mk I H) (Line.mk B C))
  (h_CH_perp_IH : Angle.Unoriented.value C H I = Real.pi / 2)
  (h_HI_perp_BI : Angle.Unoriented.value H I B = Real.pi / 2)
  -- Collinearity and order: A, I, H, D are collinear, A-I-H, I-H-D
  (h_collinear : Collinear ℝ ({A, I, H, D} : Set (EuclideanSpace ℝ (Fin 2))))
  (h_sbtw_AIH : Sbtw ℝ A I H)
  (h_sbtw_IHD : Sbtw ℝ I H D)
  -- Ray BI is between BA and BC for angle addition: ABC = ABI + IBC
  (h_btw_BA_BI_BC : Angle.btw (Ray.mk B A) (Ray.mk B I) (Ray.mk B C))
  -- Non-degeneracy
  (h_A_ne_B : A ≠ B)
  (h_B_ne_C : B ≠ C)
  (h_C_ne_D : C ≠ D)
  (h_D_ne_A : D ≠ A)
  (h_C_ne_H : C ≠ H)
  (h_B_ne_I : B ≠ I)
  :
  dist A B + dist B C + dist C D + dist D A = 14 * Real.sqrt 2 + 40 := by
  sorry

end noncomputable section