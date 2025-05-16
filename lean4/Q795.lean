import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace ProblemFormalization

-- Let V be a finite dimensional real inner product space, and P its Euclidean affine space.
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points on the plane
variable (A B G : P)

-- r : radius of the circle ω, centered at G, with 0 < r.
variable (r : ℝ) (h_r_pos : 0 < r)

-- The circle ω centered at G with radius r
def circle_ω (G : P) (r : ℝ) : EuclideanGeometry.Sphere P :=
  { center := G, radius := r }

-- Hypotheses: A and B lie on the circle ω.
variable (hA_on_ω : A ∈ circle_ω G r)
variable (hB_on_ω : B ∈ circle_ω G r)

-- Convert degrees to radians
def degreesToRadians (degrees : ℝ) : ℝ :=
  degrees / 180 * Real.pi

-- Given: ∠AGB = 30°
variable (h_angle_AGB : EuclideanGeometry.angle A G B = degreesToRadians 30)

-- The measure of the arc GBA with center G is the central angle ∠AGB.
def measureOfArcGBA (A B G : P) : ℝ :=
  EuclideanGeometry.angle A G B

theorem measure_of_arc_GBA_30 (A B G : P) (r : ℝ) (h_r_pos : 0 < r)
    (hA_on_ω : A ∈ circle_ω G r) (hB_on_ω : B ∈ circle_ω G r)
    (h_angle_AGB : EuclideanGeometry.angle A G B = degreesToRadians 30) : 
    measureOfArcGBA A B G = degreesToRadians 30 :=
  h_angle_AGB

end ProblemFormalization