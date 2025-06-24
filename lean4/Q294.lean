import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
open Real EuclideanGeometry Affine AffineSubspace 
open scoped EuclideanGeometry 
abbrev Point := EuclideanSpace ℝ (Fin 2) 
noncomputable def triangleArea (p1 p2 p3 : Point) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
theorem right_triangle_area_apc
    (A B C M N P : Point)
    (h_right_angle_at_B : ∠ A B C = Real.pi / 2) 
    (h_M_is_midpoint_AB : M = midpoint ℝ A B)
    (h_N_is_midpoint_BC : N = midpoint ℝ B C)
    (h_len_AB : dist A B = 6)
    (h_len_BC : dist B C = 8)
    (h_P_on_line_AN : P ∈ affineSpan ℝ ({A, N} : Set Point))
    (h_P_on_line_CM : P ∈ affineSpan ℝ ({C, M} : Set Point))
    (h_A_ne_N : A ≠ N)
    (h_C_ne_M : C ≠ M)
    (h_lines_not_parallel : ¬ (affineSpan ℝ ({A, N} : Set Point) ∥ affineSpan ℝ ({C, M} : Set Point)))
    : triangleArea A P C = 8 := by 
  sorry
