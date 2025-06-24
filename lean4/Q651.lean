import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry Affine AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (deg : ℝ) : ℝ := deg * (π / 180)
theorem find_angle_ADC
  (A B C D : P)
  (hCB : dist C B = 18)
  (hCD : dist D C = 12)
  (hAB : dist A B = 18)
  (hAD : dist A D = 12)
  (hCB_AD : affineSpan ℝ {C, B} ∥ affineSpan ℝ {A, D})
  (hCD_AB : affineSpan ℝ {C, D} ∥ affineSpan ℝ {A, B})
  (hAngleBAD : angle D A B = degreesToRadians 115) :
  angle A D C = degreesToRadians 65 :=
by
  sorry
