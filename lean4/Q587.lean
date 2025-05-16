import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open EuclideanGeometry

/--
Given triangle ABC with AC = 5, ∠ABC = 60° (π/3 radians), ∠CAB = 30° (π/6 radians),
then BC = 5 * sqrt 3 / 3.
-/
theorem triangle_side_length_BC_from_AC_angles
    {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
    (A B C : P)
    (h_AC : dist A C = 5)
    (h_angle_ABC : ∠ A B C = π / 3)
    (h_angle_CAB : ∠ C A B = π / 6) :
    dist B C = 5 * (sqrt 3) / 3 := by
  sorry