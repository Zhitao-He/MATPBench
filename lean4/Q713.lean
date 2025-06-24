import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (A C F : P)
variable (x : ℝ)
axiom hF_midpoint : F = midpoint ℝ A C
axiom hAC_length : dist A C = 9 * x - 1
axiom hAF_length : dist A F = 2 * x + 7
theorem length_of_AF_is_13 : dist A F = 13 := by
  sorry