import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

namespace FormalProblem

-- Working in an Euclidean affine space.
variable {V P : Type*}
  [NormedAddCommGroup V] [InnerProductSpace ℝ V]
  [MetricSpace P] [NormedAddTorsor V P]

/--
Given points M, K, L : P in an Euclidean affine space,  
- K is on the circle centered at M with radius x,
- KL is tangent to the circle at K (i.e., MK ⟂ KL at K),
- dist K L = 17,
- dist M L = 10,
then x = 9.45.
-/
theorem circleTangentLength (M K L : P) (x : ℝ)
    (h_radius_MK : dist M K = x)
    (h_tangent_at_K : Angle.IsRightAngle M K L)
    (h_len_KL : dist K L = 17)
    (h_len_ML : dist M L = 10) :
    x = 9.45 := by
  sorry

end FormalProblem