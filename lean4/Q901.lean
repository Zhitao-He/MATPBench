import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

namespace ProblemSQP

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAffineSpace V P]

variable (S Q P : P)

def degreesToRadians (deg : ℝ) : ℝ := deg * (Real.pi / 180)

theorem measure_angle_SQP_eq_42_degrees : ∠ S Q P = degreesToRadians 42 := by
  sorry

theorem measure_angle_SQP_eq_42_degrees_direct : ∠ S Q P = (42 / 180 : ℝ) * Real.pi := by
  sorry

end ProblemSQP