import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry Metric

namespace CircleProblem

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

variable (A B C O : P)

variable (hO : O = midpoint ℝ A B)
variable (hAC : dist A C = 8)
variable (hBC : dist B C = 15)

theorem radius_eq_8_5 : dist A B / 2 = (8.5 : ℝ) := by sorry

end CircleProblem