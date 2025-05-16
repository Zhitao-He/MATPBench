import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic

open EuclideanGeometry RealInnerProductSpace Real

namespace CircleProblem

-- Points in the Euclidean plane
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
variable (A B C D O : E)

-- Helper function: degrees to radians
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)

-- O is the midpoint of A and B (AB is a diameter of the circle with center O)
variable (hO_mid : O = midpoint ℝ A B)

-- A ≠ B
variable (hA_ne_B : A ≠ B)

-- C and D are on the circle with center O, radius OA = OB
variable (hC_on : C ∈ Metric.sphere O (dist A O))
variable (hD_on : D ∈ Metric.sphere O (dist A O))

-- B ≠ C; D ≠ C (angles at C are well-defined)
variable (hB_ne_C : B ≠ C)
variable (hD_ne_C : D ≠ C)

-- ∡ B C D = 25° in radians
variable (h_angle_BCD : (∡ B C D).toNNReal = degToRad 25)

-- Theorem: ∡ A O D = 130°
theorem angle_AOD_is_130_degrees : (∡ A O D).toNNReal = degToRad 130 := by
  sorry

end CircleProblem