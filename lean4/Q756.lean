import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

open Real EuclideanGeometry

/--
Let A, B, C be points in the Euclidean plane, with:
- dist A B = y > 0
- dist B C = x > 0
- dist C A = 7 * sqrt 2
- angle C A B = π / 4 (∠CAB = 45°)
- angle B C A = π / 2 (∠BCA = 90°, BC ⊥ AC)

Then y = 14.
-/
theorem value_of_y_triangle
    (A B C : PPoint)      -- points in the Euclidean plane
    (x y : ℝ)             -- lengths
    (h_y_pos : y > 0)     -- y > 0
    (h_x_pos : x > 0)     -- x > 0
    (h_AB : dist A B = y) -- AB = y
    (h_BC : dist B C = x) -- BC = x
    (h_CA : dist C A = 7 * sqrt 2) -- CA = 7√2
    (h_angle_CAB : angle C A B = π / 4)  -- ∠CAB = 45°
    (h_angle_BCA : angle B C A = π / 2) : -- ∠BCA = 90°
    y = 14 :=
by sorry