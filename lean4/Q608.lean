import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem area_parallelogram_CADB
  (A C D B E : PPoint)
  (hAC : dist A C = 25)
  (hAD : dist A D = 21)
  (hEB : dist E B = 20)
  (h_parallelogram : (C -ᵥ A = D -ᵥ B) ∧ (D -ᵥ A = B -ᵥ C))
  (h_perp : EuclideanGeometry.angle D E B = Real.pi / 2)
  (hE_on_AD : E ∈ affineSpan ℝ ({A, D} : Set PPoint)) :
  (dist A D) * (dist E B) = 420 := by
  sorry
