import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Convex.Side
open Real EuclideanGeometry
open Affine AffineSubspace
open Convex
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
theorem angle_2_equals_60_degrees
  (A B C D X : P)
  (h_AD_parallel_BC : (affineSpan ℝ {A, D}) ∥ (affineSpan ℝ {B, C}))
  (h_BAC_angle : EuclideanGeometry.angle B A C = degToRad 78)
  (h_ACB_angle : EuclideanGeometry.angle A C B = degToRad 42)
  (h_sbtw_XAB : Sbtw ℝ X A B)
  (h_A_ne_D : A ≠ D)
  (h_B_ne_C : B ≠ C)
  (h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))
  (h_noncollinear_XAD : ¬ Collinear ℝ ({X, A, D} : Set P))
  (h_noncollinear_DAB : ¬ Collinear ℝ ({D, A, B} : Set P))
  (h_DC_sameside_AB : (affineSpan ℝ {A, B}).SSameSide D C)
  : EuclideanGeometry.angle X A D = degToRad 60 := by sorry
