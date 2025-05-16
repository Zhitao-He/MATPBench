import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

open EuclideanGeometry

variable {V P : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V] [MetricSpace P] [NormedAddTorsor V P]

/-- 
Given: In Euclidean affine space, triangle RST with
- dist R S = 3 * x - 5
- dist R T = 2 * x + 7
- dist R S = dist R T
- dist S T = 22
Then: Triangle RST is isosceles.
-/
theorem triangle_RST_is_isosceles
    (R S T : P) (x : ℝ)
    (hRS : dist R S = 3 * x - 5)
    (hRT : dist R T = 2 * x + 7)
    (hRS_RT : dist R S = dist R T)
    (hST : dist S T = 22) :
    Triangle.IsIsosceles (Triangle.mk R S T) := by
  sorry