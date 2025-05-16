import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.NormedSpace.AddTorsor

open scoped EuclideanGeometry
open scoped Real

variable {PE : Type*} [EuclideanPlane PE]
variable (A B C D P Q R S T : PE)

-- Rectangle ABCD with AB = 16
variable (h_rect : B -ᵥ A = C -ᵥ D ∧ ⟪B -ᵥ A, D -ᵥ A⟫_ℝ = 0 ∧ A ≠ B ∧ dist A B = 16)

-- P is on BC with ∠APD = 90°
variable (h_P : P ∈ segment ℝ B C ∧ Angle.Unoriented.value (A -ᵥ P) (D -ᵥ P) = Real.pi / 2)

-- BP = PT and T is on BC
variable (h_T : P = midpoint ℝ B T ∧ T ∈ segment ℝ B C)

-- TS is perpendicular to AD (which is parallel to BC in rectangle)
variable (h_TS : S ∈ segment ℝ A D ∧ T ≠ S ∧ 
          Angle.Unoriented.value (S -ᵥ T) (D -ᵥ A) = Real.pi / 2)

-- Q is intersection of PD and TS
variable (h_Q : Q ∈ segment ℝ P D ∧ Q ∈ segment ℝ T S)

-- R is on CD and A, Q, R are collinear
variable (h_R : R ∈ segment ℝ C D ∧ Collinear ℝ ({A, Q, R} : Set PE))

-- Triangle PQA side lengths
variable (h_triangle : dist A P = 20 ∧ dist A Q = 25 ∧ dist Q P = 15)

-- To prove: QR - RD = 0
theorem find_QR_minus_RD_is_0 : dist Q R - dist R D = 0 := by
  sorry