import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic

namespace Problems.Geometry

open Real EuclideanGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {Pt : Type*} [MetricSpace Pt] [NormedAddTorsor V Pt]

variable (A B C M N P : Pt)

theorem right_triangle_midpoint_area_scaling
  (h_right_angle_C : Angle.IsRightAngle A C B)
  (hM_midpoint : M = midpoint ℝ B C)
  (hN_midpoint : N = midpoint ℝ A C)
  (hP_midpoint : P = midpoint ℝ A B)
  (h_area_APN : Triangle.area A P N = 2) :
  Triangle.area A B C = 8 := by
  sorry

end Problems.Geometry