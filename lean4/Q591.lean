import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

abbrev P := EuclideanSpace ℝ (Fin 2)

section TangentAngleTheorem

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [FiniteDimensional ℝ P]

variables {A B D F : P} (r : ℝ)


variable (hF_on_circle : dist F A = r)
variable (hB_on_circle : dist B A = r)

variable (h_collinear_FAB : Collinear ℝ ({F, A, B} : Set P))

variable (hA_midpoint_FB : A = midpoint ℝ F B)

variable (h_FB_perp_FD : ⟪B - F, D - F⟫ = 0)

variable (hD_ne_F : D ≠ F)


theorem angle_AFD_is_right_angle (hr_pos : 0 < r) :
    ∠ A F D = π / 2 := by
  sorry

end TangentAngleTheorem
