import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

/-!
# Value of tan(∠SRT) in a right triangle

Given triangle SRT in a Euclidean affine space, with side lengths SR = 5, ST = 4, TR = 3,  
and with ST ⟂ RT (that is, ∠STR is a right angle),  
then tan(∠SRT) = 4/3.
-/

namespace EuclideanGeometryProblem

-- We work in a real inner product space (Euclidean space) `E`, and its affine space `P`.
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor E P]

/--
In a triangle SRT in a Euclidean space, if:
- dist S R = 5,
- dist S T = 4,
- dist R T = 3,
- and ST ⟂ RT (that is, ∠STR is a right angle),
then tan(∠SRT) = 4/3.
-/
theorem tan_angle_SRT
    (S R T : P)
    (h_SR : dist S R = 5)
    (h_ST : dist S T = 4)
    (h_TR : dist R T = 3)
    (h_right : Angle.IsRightAngle S T R) :
    Real.tan (Angle.angle S R T) = 4 / 3 := by
  sorry

end EuclideanGeometryProblem