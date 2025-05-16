import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

open Real EuclideanGeometry

namespace Problem

-- Points in Euclidean space
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points S, T, R in P
variable (s t r : P)

-- Given side lengths
axiom dist_s_r : dist s r = 5
axiom dist_t_r : dist t r = 3
axiom dist_t_s : dist t s = 4

-- Right angle at T (RT ⟂ ST)
axiom right_angle : angle s t r = π / 2

-- The required result
theorem cos_angle_t_s_r : Real.cos (angle t s r) = 4 / 5 := by sorry

end Problem