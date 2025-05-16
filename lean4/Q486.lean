import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Sphere.Power
import Mathlib.Data.Real.Basic



open EuclideanGeometry

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]

variable (A B C D E X : P)
variable (x : ℝ)


axiom hAB : dist A B = 5
axiom hBD : dist B D = x
axiom hAC : dist A C = 15/2
axiom hCE : dist C E = 9/2


axiom hX_center : ∀ p, p ∈ ({B, C, D, E} : Set P) → dist p X = dist B X


axiom hCol_ABD : Collinear ℝ ({A, B, D} : Set P)
axiom hCol_ACE : Collinear ℝ ({A, C, E} : Set P)
axiom hBetween_ABD : dist A D = dist A B + dist B D
axiom hBetween_ACE : dist A E = dist A C + dist C E


theorem geometry_problem_x_eq_13 : x = 13 := by
  sorry