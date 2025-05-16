import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

variable [FiniteDimensional ℝ V] (h_dim_eq_2 : FiniteDimensional.finrank ℝ V = 2)

namespace ProblemFormalization

variable (O A B C D E : P)
variable (r : ℝ)

variable (hr_pos : 0 < r)

variable (hA_on_circle : A ∈ Euclidean.Sphere O r)
variable (hB_on_circle : B ∈ Euclidean.Sphere O r)
variable (hC_on_circle : C ∈ Euclidean.Sphere O r)
variable (hD_on_circle : D ∈ Euclidean.Sphere O r)
variable (hE_on_circle : E ∈ Euclidean.Sphere O r)

variable (h_E_ne_B : E ≠ B)
variable (h_D_ne_C : D ≠ C)
variable (h_A_ne_B : A ≠ B)
variable (h_E_ne_D : E ≠ D)
variable (h_A_ne_E : A ≠ E)
variable (h_B_ne_C : B ≠ C)

variable (h_EB_diameter : O = midpoint ℝ E B)

variable (h_EB_parallel_DC : AffineSubspace.Parallel (affineSpan ℝ ({E, B} : Set P)) (affineSpan ℝ ({D, C} : Set P)))

variable (h_AB_parallel_ED : AffineSubspace.Parallel (affineSpan ℝ ({A, B} : Set P)) (affineSpan ℝ ({E, D} : Set P)))

variable (h_angle_ratio : (5 : ℝ) * (Angle.Unoriented.value (∠ A E B h_A_ne_E.symm h_E_ne_B)) =
                            (4 : ℝ) * (Angle.Unoriented.value (∠ A B E h_A_ne_B.symm h_E_ne_B.symm)))

def degreesToRadians (d : ℝ) : ℝ := d * Real.pi / 180

theorem angle_BCD_is_130_degrees :
  (Angle.Unoriented.value (∠ B C D h_B_ne_C.symm h_D_ne_C.symm)) = degreesToRadians 130 := by sorry

end ProblemFormalization