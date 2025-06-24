import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem angles_are_equal
  (O P A B C D E : Point)
  (r : ℝ)
  (hA_on_Ω : A ∈ EuclideanGeometry.Sphere.mk O r)
  (hB_on_Ω : B ∈ EuclideanGeometry.Sphere.mk O r)
  (hC_on_Ω : C ∈ EuclideanGeometry.Sphere.mk O r)
  (hD_on_Ω : D ∈ EuclideanGeometry.Sphere.mk O r)
  (hP_ne_A : P ≠ A)
  (hP_ne_B : P ≠ B)
  (hPA_tangent : inner ℝ (A -ᵥ O) (P -ᵥ A) = 0) 
  (hPB_tangent : inner ℝ (B -ᵥ O) (P -ᵥ B) = 0) 
  (hC_ne_D : C ≠ D)
  (hP_ne_C : P ≠ C)
  (hP_ne_D : P ≠ D)
  (hPCD_collinear : Collinear ℝ ({P, C, D} : Set Point))
  (hE : E = midpoint ℝ A B)
  (hr_pos : r > 0)
  (hA_ne_B : A ≠ B)
  (hA_ne_C : A ≠ C)
  (hB_ne_C : B ≠ C)
  (hE_ne_C : E ≠ C)
  : EuclideanGeometry.angle A C D = EuclideanGeometry.angle B C E := by
  sorry
