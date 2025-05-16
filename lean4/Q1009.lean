import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

open Metric
open scoped EuclideanGeometry

-- Define 2D point as EuclideanSpace ℝ (Fin 2)
abbrev PPoint := EuclideanSpace ℝ (Fin 2)

section GeometryProblem

variable (O A B C D F E : PPoint)
variable (r : ℝ)

-- r > 0
variable (hr_pos : 0 < r)

-- A, B, D, F are on the circle centered at O with radius r
variable (hA_on_circle : A ∈ Sphere O r)
variable (hB_on_circle : B ∈ Sphere O r)
variable (hD_on_circle : D ∈ Sphere O r)
variable (hF_on_circle : F ∈ Sphere O r)

-- AB is the diameter: O is the midpoint of A and B
variable (hAB_diameter : O = midpoint ℝ A B)

-- C ≠ B and CB tangent to the circle at B, i.e., C ≠ B and CB ⟂ OB (radial)
variable (hC_ne_B : C ≠ B)
variable (hCB_tangent_at_B : ⟪C -ᵥ B, B -ᵥ O⟫ = 0)

-- D is any point on the arc AB (not collinear with A,B,O)
variable (hD_not_collinear : ¬ Collinear ℝ A B D)

-- CD meets the circle again at F; F ≠ D, and C, D, F collinear
variable (hC_ne_D : C ≠ D)
variable (hCDF_collinear : Collinear ℝ C D F)
variable (hF_ne_D : F ≠ D)

-- E is the intersection of lines AD and OC, written parametrically:
variable (k l : ℝ)
variable (hk_pos : 0 < k)
variable (hl_pos : 0 < l)
variable (hE_on_AD : E = A +ᵥ k • (D -ᵥ A))
variable (hE_on_OC : E = O +ᵥ l • (C -ᵥ O))

-- Goal: EB ⟂ FB, i.e., inner product zero
theorem perpendicular_EB_FB : ⟪E -ᵥ B, F -ᵥ B⟫ = 0 := by
  sorry

end GeometryProblem