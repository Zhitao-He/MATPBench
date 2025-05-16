import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Definitions
import Mathlib.Analysis.NormedSpace.AddTorsor

open Real

noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)

section GeometryProblem

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [FiniteDimensional ℝ V] [Fact (finrank ℝ V = 2)]

variable (A B C D E : P)

variable (hCBA : ∠ C B A = degToRad 36)
variable (hDBA : ∠ D B A = degToRad 42)
variable (hBCD : ∠ B C D = degToRad 28)
variable (hCDE : ∠ C D E = degToRad 57)

variable (hAEC : Sbtw ℝ A E C)
variable (hBED : Sbtw ℝ B E D)

theorem find_angle_BAE : ∠ B A E = degToRad 49 := by
  sorry

end GeometryProblem