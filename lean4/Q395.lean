import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (π / 180)
theorem inscribedAngle_from_diameter_and_central_angle
    (O G P N A : EuclideanSpace ℝ (Fin 2))
    (r : ℝ)
    (hr_pos : 0 < r)
    (hG_on_circle : G ∈ Metric.sphere O r)
    (hP_on_circle : P ∈ Metric.sphere O r)
    (hN_on_circle : N ∈ Metric.sphere O r)
    (hA_on_circle : A ∈ Metric.sphere O r)
    (hPN_diameter : O = midpoint ℝ P N)
    (hGA_diameter : O = midpoint ℝ G A)
    (h_angle_GOP : EuclideanGeometry.angle G O P = degreesToRadians 78)
    : EuclideanGeometry.angle N G A = degreesToRadians 39 := by
  sorry
