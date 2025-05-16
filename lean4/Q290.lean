import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.LinearAlgebra.AffineSpace.Collinear

open Real

-- Setup for Euclidean plane
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable (finrankV2 : FiniteDimensional.finrank ℝ V = 2)
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Six points of the hexagon (cyclic order)
variable (A B C D E F : P)

-- Definition of a hexagon whose vertices are concyclic
structure CyclicHexagon where
  center : P
  radius : ℝ
  radius_pos : radius > 0
  on_circle_A : A ∈ Metric.sphere center radius
  on_circle_B : B ∈ Metric.sphere center radius
  on_circle_C : C ∈ Metric.sphere center radius
  on_circle_D : D ∈ Metric.sphere center radius
  on_circle_E : E ∈ Metric.sphere center radius
  on_circle_F : F ∈ Metric.sphere center radius

-- Function to convert an angle from radians to degrees
noncomputable def radiansToDegrees (rad : ℝ) : ℝ :=
  rad * (180 / π)

-- The formalization of the specific inscribed hexagon from the picture:
-- Assume: the cyclic hexagon ABCDEF is inscribed in a circle;
--         ∠ABC = α, ∠CDE = 110°, ∠EFA = 105°, vertices in cyclic order.
-- Prove: α = 145°
theorem inscribed_hexagon_alpha_145
    (h_cyclic : CyclicHexagon A B C D E F)
    (h_A_ne_B : A ≠ B) 
    (h_C_ne_B : C ≠ B)
    (h_noncollinear_ABC : ¬Collinear ℝ ({A, B, C} : Set P))
    (h_D_ne_E : D ≠ E)
    (h_F_ne_A : F ≠ A)
    (h_noncollinear_CDE : ¬Collinear ℝ ({C, D, E} : Set P))
    (h_noncollinear_EFA : ¬Collinear ℝ ({E, F, A} : Set P))
    (h_angle_CDE : radiansToDegrees (Angle.value C D E) = 110)
    (h_angle_EFA : radiansToDegrees (Angle.value E F A) = 105) :
    radiansToDegrees (Angle.value A B C) = 145 := by
  sorry