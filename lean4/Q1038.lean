import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.LinearAlgebra.AffineSpace.Midpoint

open EuclideanGeometry
open AffineSpace

-- Ambient Euclidean plane
abbrev P := EuclideanSpace ℝ (Fin 2)

-- Points
variable (A B C O E F H D L M N : P)

-- Circle centered at O with positive radius
variable (circO : Sphere P)
variable (h_circO_center : circO.center = O)
variable (h_circO_pos : circO.radius > 0)

-- A, B, C are non-collinear and on the circle
variable (h_noncollinear_ABC : ¬Collinear ℝ ({A, B, C} : Set P))
variable (h_A_on_circO : A ∈ circO)
variable (h_B_on_circO : B ∈ circO)
variable (h_C_on_circO : C ∈ circO)

-- E on AC, BE ⟂ AC at E
variable (h_E_on_AC : E ∈ affineSpan ℝ ({A, C} : Set P))
variable (h_BE_perp_AC : Perpendicular (affineSpan ℝ ({B, E} : Set P)) (affineSpan ℝ ({A, C} : Set P)))

-- F on AB, CF ⟂ AB at F
variable (h_F_on_AB : F ∈ affineSpan ℝ ({A, B} : Set P))
variable (h_CF_perp_AB : Perpendicular (affineSpan ℝ ({C, F} : Set P)) (affineSpan ℝ ({A, B} : Set P)))

-- Orthocenter H = BE ∩ CF
variable (h_H_on_BE : H ∈ affineSpan ℝ ({B, E} : Set P))
variable (h_H_on_CF : H ∈ affineSpan ℝ ({C, F} : Set P))

-- D is the other intersection of AH with the circle
variable (h_D_on_circO : D ∈ circO)
variable (h_D_ne_A : D ≠ A)
variable (h_A_H_D_collinear : Collinear ℝ ({A, H, D} : Set P))

-- L is midpoint of AH
variable (h_L_mid_AH : L = midpoint ℝ A H)

-- Line MN passes through L and is parallel to EF
variable (h_MN_parallel_EF : Parallel (affineSpan ℝ ({M, N} : Set P)) (affineSpan ℝ ({E, F} : Set P)))
variable (h_L_on_MN : L ∈ affineSpan ℝ ({M, N} : Set P))

-- M and N are intersections of MN with AB and AC, respectively
variable (h_M_on_AB : M ∈ affineSpan ℝ ({A, B} : Set P))
variable (h_N_on_AC : N ∈ affineSpan ℝ ({A, C} : Set P))

-- Distinctness conditions for angle definitions
variable (h_M_ne_D : M ≠ D)
variable (h_F_ne_D : F ≠ D)
variable (h_N_ne_D : N ≠ D)
variable (h_E_ne_D : E ≠ D)

-- The claim
theorem angle_MDF_eq_angle_NDE :
    angle M D F = angle N D E := by sorry