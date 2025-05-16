import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds

open EuclideanGeometry

-- Working in a 2D Euclidean affine space
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [FiniteDimensional ℝ V] (finrank_V : FiniteDimensional.finrank ℝ V = 2)

-- Define the five points and the center
variable (A B C D E O : P)

-- All four points are on the circle with center O
variable (hA : dist A O = dist B O)
variable (hB : dist B O = dist C O)
variable (hC : dist C O = dist D O)
variable (hD : dist D O = dist A O)

-- E is intersection of chords AB and CD
variable (hEAB : E ∈ openSegment ℝ A B)
variable (hECD : E ∈ openSegment ℝ C D)

-- Given angle measures (in degrees, converted to radians)
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)

variable (h_angle_ADC : (unorientedAngle A D C).toReal = degToRad 35)
variable (h_angle_AEC : (unorientedAngle A E C).toReal = degToRad 105)

-- Conclusion: angle B C D = 70°
theorem intersecting_chords_angle_property :
    (unorientedAngle B C D).toReal = degToRad 70 := by
  sorry