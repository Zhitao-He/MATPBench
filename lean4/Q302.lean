import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.LinearAlgebra.FiniteDimensional

open Real EuclideanSpace Angle FiniteDimensional

-- Let V be a Euclidean vector space of dimension 2 over ℝ (the plane)
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V] [Fact (finrank ℝ V = 2)]
-- Let P be a Euclidean affine plane modeled on V
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points
variable (A R S T B : P)

-- Circle radius
variable (radius : ℝ)

-- Hypotheses
variable (h_radius_pos : 0 < radius)
variable (hR_on_circle : dist R A = radius)
variable (hS_on_circle : dist S A = radius)
variable (hB_on_circle : dist B A = radius)
variable (hR_ne_T : R ≠ T)
variable (hB_ne_T : B ≠ T)

-- Helper: degrees to radians
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (π / 180)

-- angle RAS is 74°
variable (h_angle_RAS_measure : Angle.toReal (∠ R A S) = degreesToRadians 74)
-- angle RTB is 28°
variable (h_angle_RTB_measure : Angle.toReal (∠ R T B) = degreesToRadians 28)

-- Conclusion: measure of the minor arc BR is 81°
theorem measure_of_minor_arc_BR_is_81_degrees :
  Angle.toReal (∠ B A R) = degreesToRadians 81 := by
  sorry