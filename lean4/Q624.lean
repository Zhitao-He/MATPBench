import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem valueOfX
  (A B C D : PPoint)
  (x : ℝ)
  (hA_ne_C : A ≠ C)
  (hB_ne_C : B ≠ C)
  (hD_ne_C : D ≠ C)
  (h_collinear : Collinear ℝ ({A, C, D} : Set PPoint))
  (h_opposite_rays : ¬SameRay ℝ (C -ᵥ A) (C -ᵥ D))
  (h_BCA : EuclideanGeometry.angle B C A = (5 * x) * Real.pi / 180)
  (h_DCB : EuclideanGeometry.angle D C B = (3 * x) * Real.pi / 180) :
  x = 45 / 2 := by
  sorry
