import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
open EuclideanGeometry
open Affine AffineSubspace
theorem find_angle_ABC
  (A B C D E : PPoint)
  (hAD : A ≠ D) (hDC : D ≠ C) (hCB : C ≠ B) (hBA : B ≠ A) (hED : E ≠ D)
  (h_CDE_measure : angle C D E = degToRad 43)
  (h_supplementary_CDA_CDE : angle C D A + angle C D E = Real.pi)
  (h_AD_parallel_BC : affineSpan ℝ {A, D} ∥ affineSpan ℝ {B, C})
  (h_DC_parallel_AB : affineSpan ℝ {D, C} ∥ affineSpan ℝ {A, B}) :
  angle A B C = degToRad 137 :=
by
  sorry
