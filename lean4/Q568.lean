import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry

section ArcBOPMeasure

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [Fact (finrank ℝ V = 2)]

variable (B O P N : P) (r : ℝ) (hr : r > 0)
variable (hO : O ∈ Sphere B r) (hP : P ∈ Sphere B r) (hN : N ∈ Sphere B r)
variable (hP_ne_N : P ≠ N) (hO_ne_N : O ≠ N)

def degreesToRadians (d : ℝ) : ℝ := d * (π / 180)

variable (h_angle_PNO : angle P N O = degreesToRadians 56)

theorem measure_arc_BOP_is_112_degrees : angle O B P = degreesToRadians 112 := by
  sorry

end ArcBOPMeasure