import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open EuclideanGeometry
open Affine AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (p1 p2 p3 : P) : ℝ :=
  (1 / 2 : ℝ) * abs (((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0))
theorem find_AF_equals_336
    (A B C D E F G : P)
    (h_ABC_is_equilateral : dist A B = dist B C ∧ dist B C = dist C A)
    (h_AB_length : dist A B = 840)
    (h_D_sameside_BC_as_A : True := trivial) 
    (h_BD_perpendicular_to_BC : angle D B C = π / 2)
    (ℓ : AffineSubspace ℝ P)
    (h_ℓ_is_line : True := trivial) 
    (h_D_in_ℓ : D ∈ ℓ)
    (h_ℓ_parallel_BC : ℓ ∥ affineSpan ℝ ({B, C} : Set P))
    (h_E_in_seg_AB : E ∈ segment ℝ A B)
    (h_E_in_ℓ : E ∈ ℓ)
    (h_F_in_seg_AC : F ∈ segment ℝ A C)
    (h_F_in_ℓ : F ∈ ℓ)
    (h_G_in_ℓ : G ∈ ℓ)
    (h_F_between_E_G : Sbtw ℝ E F G)
    (h_AFG_isosceles : dist A F = dist A G)
    (h_area_BED_nonzero : triangleArea B E D ≠ 0)
    (h_area_ratio : triangleArea A F G / triangleArea B E D = 8 / 9) :
    dist A F = 336 := by
  sorry
