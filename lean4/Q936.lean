import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Definition

open EuclideanGeometry Angle.Unoriented

-- Let P be a real inner product plane
variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P] [Fact (finrank ℝ P = 2)]

namespace ArcMeasureProblem

-- Points: center A, points R S T on the circle
variables (A R S T : P)

-- Circle has positive radius
variable (r : ℝ) (hr_pos : 0 < r)

-- R, S, T are on Sphere A r
variable (hR : R ∈ Sphere A r)
variable (hS : S ∈ Sphere A r)
variable (hT : T ∈ Sphere A r)

-- Angle ∠RST = 63°, in radians
variable (h_angle : angle R S T = (63 / 180 : ℝ) * Real.pi)

-- The points R, S, T are pairwise distinct
variable (hRS : R ≠ S)
variable (hTS : T ≠ S)
variable (hRT : R ≠ T)

-- The three points R, A, T are not collinear (so central angle is defined and not 0 or π)
variable (h_not_collinear : ¬ Collinear ℝ R A T)

-- S is on the major arc RT, i.e., A and S are on opposite sides of the line RT
variable (h_S_on_major_arc : ¬ sameside A S (affineSpan ℝ ({R, T} : Set P)))

-- Then, the central angle ∠RAT (i.e., the arc ATR) is 126°
theorem measure_of_arc_ATR_is_126_degrees :
    angle R A T = (126 / 180 : ℝ) * Real.pi := by
  sorry

end ArcMeasureProblem