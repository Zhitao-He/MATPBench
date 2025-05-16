import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

/-!
Formalization: Triangle ABC inscribed in a circle with center O.
Given: ∠OAB = 35°, i.e., the angle at A between OA and AB.
Goal: ∠ACB = 55°, i.e., the angle at C between CA and CB.
-/

open Real EuclideanGeometry Angle

section InscribedAngleProblem

variable {P : Type*} [EuclideanPlane P]

-- Points A, B, C on the plane
variable (A B C O : P)

-- A, B, C are distinct, forming a nondegenerate triangle
variable (hA_ne_B : A ≠ B)
variable (hB_ne_C : B ≠ C)
variable (hC_ne_A : C ≠ A)

-- A, B, C all lie on the circle centered at O with positive radius
variable (r : ℝ)
variable (hr : 0 < r)
variable (hA_on : dist O A = r)
variable (hB_on : dist O B = r)
variable (hC_on : dist O C = r)

-- Angle OAB at A (between OA and AB) is 35 degrees = 35 * π / 180 radians
variable (h_angle : ∠ O A B = (35 * π / 180 : ℝ))

-- Target: The angle at C between CA and CB is 55 degrees = 55 * π / 180 radians
theorem inscribed_angle_ACB_is_55_degrees :
    ∠ A C B = (55 * π / 180 : ℝ) := by
  sorry

end InscribedAngleProblem