import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
open Real EuclideanGeometry
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (π / 180)
variable (M K B G : P)
variable (h_angle_GKM : ∠ G K M = degreesToRadians 62)
theorem measure_of_angle_BKG : ∠ B K G = degreesToRadians 118 := by
  sorry