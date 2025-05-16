import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ (EuclideanSpace ℝ 2) P]

theorem sin_X_in_right_triangle_XYZ
    (X Y Z : P)
    (h_right_angle_Y : ∠ X Y Z = π / 2)
    (h_dist_XY : dist X Y = 8)
    (h_dist_YZ : dist Y Z = 6)
    (h_dist_XZ : dist X Z = 10) :
    Real.sin (∠ Z X Y) = 3/5 := by
  sorry