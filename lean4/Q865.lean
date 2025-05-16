import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

namespace ProblemFMK

open Real EuclideanGeometry

-- Let V be the underlying vector space for the Euclidean affine space P
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
-- Let P be a Euclidean affine space modeled on V
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

/-- Convert degrees to radians. -/
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (π / 180)

variable (F M K : P)

/--
Property that points F, M, K lie on a circle with given arc measure (in radians).
-/
structure ArcProperty (F M K : P) (measureRadians : ℝ) : Prop where
  center : P
  radius : ℝ
  radius_pos : 0 < radius
  on_circle : dist F center = radius ∧ dist M center = radius ∧ dist K center = radius
  angle_sum : Angle.toReal (angle F center M) + Angle.toReal (angle M center K) = measureRadians

/--
The measure of arc FMK is 109° (converted to radians).
Assuming the ambient space is 2-dimensional.
-/
theorem measure_of_arc_FMK_is_109_degrees
    (h_dim_eq_2 : FiniteDimensional.finrank ℝ V = 2) :
    ArcProperty F M K (degreesToRadians 109) := by
  sorry

end ProblemFMK