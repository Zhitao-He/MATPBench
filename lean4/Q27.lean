import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

open Real EuclideanGeometry Angle

/-- Convert degrees to radians -/
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)

namespace CircumcircleQuadrilateralAngle

variable {α : Type*} [EuclideanSpace ℝ α]
variable (A B C D : α) (S : Euclidean.Sphere α)

/-- If A, B, C, D are distinct points on a circle (sphere) S, and the angle AOB is 110 degrees
    (where O is the center of the circle), then the angle BCD is 125 degrees. -/
theorem inscribed_angle_of_cyclic_quadrilateral
    (h_S_radius_pos : 0 < S.radius)
    (h_A_on_S : A ∈ S)
    (h_B_on_S : B ∈ S)
    (h_C_on_S : C ∈ S)
    (h_D_on_S : D ∈ S)
    (h_distinct_A_B : A ≠ B)
    (h_distinct_B_C : B ≠ C)
    (h_distinct_C_D : C ≠ D)
    (h_distinct_D_A : D ≠ A)
    (h_distinct_A_C : A ≠ C)
    (h_distinct_B_D : B ≠ D)
    (h_angle_A_Scenter_B : ∠ A S.center B = degToRad 110) :
    ∠ B C D = degToRad 125 :=
by sorry

end CircumcircleQuadrilateralAngle