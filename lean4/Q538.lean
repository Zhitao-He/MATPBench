import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

open scoped Real EuclideanPlane

namespace ArcMeasureProblem

variable {E : Type} [EuclideanPlane E]
variables (B C D F G : E) (r : ℝ) (hr_pos : 0 < r)
variables (hC : dist C B = r) (hD : dist D B = r) (hF : dist F B = r) (hG : dist G B = r)
variable (h_angle_CBD : (∠ C B D).toDegrees = 55)

def majorArcMeasureDegrees (centralAngleDegrees : ℝ) : ℝ :=
  360 - centralAngleDegrees

theorem measure_of_arc_BCD :
    majorArcMeasureDegrees ((∠ C B D).toDegrees) = 305 := by
  rw [majorArcMeasureDegrees, h_angle_CBD]
  norm_num

end ArcMeasureProblem