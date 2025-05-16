import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

section GeometryProblem

open EuclideanGeometry

-- Work in an affine Euclidean space of dimension 2 over ℝ
variable {P : Type*} [EuclideanSpace ℝ P]

-- Points on the plane
variables (O A B C : P)

-- Radius of the circle
variable (R : ℝ)
variable (hR_pos : R > 0)

-- Points lie on the circle centered at O with radius R
variable (hA_on_circle : dist O A = R)
variable (hB_on_circle : dist O B = R)
variable (hC_on_circle : dist O C = R)

-- Points are pairwise distinct
variable (hA_ne_B : A ≠ B)
variable (hB_ne_C : B ≠ C)
variable (hC_ne_A : C ≠ A)

-- Triangle ABC is isosceles at C
variable (hAC_eq_BC : dist A C = dist B C)

-- Helper function to convert degrees to radians
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)

-- Angle OAC is 18 degrees
variable (hOAC_angle : Angle.unoriented (O -ᵥ A) (C -ᵥ A) = degToRad 18)

-- Theorem: angle AOB is 72 degrees
theorem angle_AOB_is_72_degrees :
    Angle.unoriented (A -ᵥ O) (B -ᵥ O) = degToRad 72 := by
  sorry

end GeometryProblem