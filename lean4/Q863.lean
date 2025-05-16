import Mathlib.Geometry.Euclidean.Basic


variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

variable (A : P)

theorem length_AP_equals_9 (P : P) : dist A P = 9 := by sorry
