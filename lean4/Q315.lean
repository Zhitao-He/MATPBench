import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds

open Real EuclideanGeometry
open scoped Real

section TriangleReflectionProblem

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [Fact (finrank ℝ V = 2)]

variable (A B C D : P)

def DegToRad (d : ℝ) : ℝ := d * (π / 180)

variable (h_ABC_not_collinear : ¬ Collinear ℝ A B C)
variable (h_D_on_segment_BC : D ∈ segment ℝ B C)
variable (h_angle_BAC : angle B A C = DegToRad 40)
variable (h_reflection : B = reflection (affineLine ℝ A D) C)

theorem angle_B_is_70_degrees : angle A B C = DegToRad 70 := by
  sorry

end TriangleReflectionProblem