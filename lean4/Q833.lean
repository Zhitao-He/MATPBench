import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real EuclideanGeometry

section TriangleProblem

variable (A B C : EuclideanSpace ℝ (Fin 2))

variable (h_dist_AB : dist A B = 26)
variable (h_dist_AC : dist A C = 24)
variable (h_dist_BC : dist B C = 10)
variable (h_angle_BCA : angle B C A = π / 2)

theorem tan_angle_ABC_eq_12_div_5 :
  Real.tan (angle A B C) = (12 : ℝ) / (5 : ℝ) := by sorry

end TriangleProblem