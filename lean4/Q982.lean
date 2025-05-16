import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

namespace EuclideanGeometryProblem

-- Let P be the Euclidean plane.
variable {P : Type*} [EuclideanPlane P]

-- Points in the configuration
variables (A B C O D E F G : P)
variable (r : ℝ)

open Affine
open AffineSubspace
open EuclideanGeometry
open Metric

-- Hypotheses

-- A, B, C are not collinear and lie on the circle centered at O with radius r
variable (h_ncol : ¬ Collinear ℝ ({A, B, C} : Set P))
variable (h_A_on_circle : A ∈ sphere O r)
variable (h_B_on_circle : B ∈ sphere O r)
variable (h_C_on_circle : C ∈ sphere O r)
variable (h_r_pos : r > 0)

-- D is the midpoint of BC
variable (h_D_midpoint : D = midpoint ℝ B C)

-- E is the second intersection of line AD with the circle (A, D, E collinear, E ≠ A, E on the circle)
variable (h_ADE_collinear : Collinear ℝ ({A, D, E} : Set P))
variable (h_E_on_circle : E ∈ sphere O r)
variable (h_A_ne_E : A ≠ E)

-- F is determined so that EF ∥ BC, E ≠ F, F on the circle
variable (h_B_ne_C : B ≠ C)
variable (h_E_ne_F : E ≠ F)
variable (h_EF_parallel_BC : lineThrough ℝ E F ∥ lineThrough ℝ B C)
variable (h_F_on_circle : F ∈ sphere O r)

-- G: line CG ⟂ AC, G ∈ AE, C ≠ A, G ≠ A, G ≠ C
variable (h_A_ne_C : A ≠ C)
variable (h_CG_perp_AC : ⟪G -ᵥ C, A -ᵥ C⟫ = (0 : ℝ))
variable (h_AEG_collinear : Collinear ℝ ({A, E, G} : Set P))
variable (h_G_ne_A : G ≠ A)
variable (h_G_ne_C : G ≠ C)
variable (h_G_ne_F : G ≠ F)

-- Theorem: ∠AGC = ∠FGC (unoriented angle)
theorem angle_AGC_eq_angle_FGC :
    EuclideanGeometry.angle A G C = EuclideanGeometry.angle F G C := by
  sorry

end EuclideanGeometryProblem