import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open EuclideanGeometry
namespace TriangleAngleProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C : P)
variable (hAB : dist A B = 13)
variable (hAC : dist A C = 12)
variable (hBC : dist B C = 15)
noncomputable def angleInDegrees (p₁ p₂ p₃ : P) : ℝ :=
  EuclideanGeometry.angle p₁ p₂ p₃ * (180 / π)
theorem measure_of_angle_BAC
    (A B C : P)
    (hAB : dist A B = 13)
    (hAC : dist A C = 12)
    (hBC : dist B C = 15) :
    angleInDegrees B A C = (180 / π) * Real.arccos (11 / 39) := by
  sorry
theorem angle_BAC_in_radians
    (A B C : P)
    (hAB : dist A B = 13)
    (hAC : dist A C = 12)
    (hBC : dist B C = 15) :
    EuclideanGeometry.angle B A C = Real.arccos (11 / 39) := by
  sorry
end TriangleAngleProblem
