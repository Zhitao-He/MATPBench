import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open EuclideanGeometry
open Real
open Affine AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def areaTrapezoid (base1 base2 height : ℝ) : ℝ :=
  (base1 + base2) * height / 2
noncomputable def heightDBAC (D E : P) : ℝ := dist D E
theorem area_DBAC_eq_target
  (A B C D E F : P)
  (h_AB : dist A B = 35)
  (h_CD : dist C D = 19)
  (h_perimeter : dist D B + dist B A + dist A C + dist C D = 74)
  (h_bases_distinct : affineSpan ℝ {D, C} ≠ affineSpan ℝ {B, A})
  (h_bases_parallel : (affineSpan ℝ {D, C}).direction = (affineSpan ℝ {B, A}).direction)
  (h_legs_equal : dist D B = dist A C)
  (h_E_on_BA : E ∈ affineSpan ℝ {B, A})
  (h_F_on_BA : F ∈ affineSpan ℝ {B, A})
  (h_DE_perp_AE : EuclideanGeometry.angle D E A = Real.pi / 2)
  (h_CF_perp_AF : EuclideanGeometry.angle C F A = Real.pi / 2)
  (h_sbtw_B_E_F : Sbtw ℝ B E F)
  (h_sbtw_E_F_A : Sbtw ℝ E F A)
  (h_D_C_same_side_BA : (affineSpan ℝ {B, A}).SSameSide D C)
  (h_B_A_same_side_DC : (affineSpan ℝ {D, C}).SSameSide B A)
  :
  areaTrapezoid (dist C D) (dist B A) (heightDBAC D E) = 162 :=
by
  sorry
