import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Sphere.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Analysis.Convex.Side 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open EuclideanGeometry Affine AffineSubspace Real 
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem concyclic_ECMD_theorem
    (O A B C D E F M : PPoint) (r : ℝ)
    (h_r_pos : r > 0)
    (hA_on_S : A ∈ EuclideanGeometry.Sphere.mk O r) 
    (hB_on_S : B ∈ EuclideanGeometry.Sphere.mk O r) 
    (hAB_diameter : O = midpoint ℝ A B)
    (hC_on_S : C ∈ EuclideanGeometry.Sphere.mk O r) 
    (hD_on_S : D ∈ EuclideanGeometry.Sphere.mk O r) 
    (h_distinct_points : A ≠ B ∧ C ≠ A ∧ C ≠ B ∧ D ≠ A ∧ D ≠ B ∧ C ≠ D)
    (h_C_D_same_side_AB : (line[ℝ, A, B]).WSameSide C D) 
    (hE_ne_C : E ≠ C) (hE_ne_D : E ≠ D)
    (h_tangent_at_C : EuclideanGeometry.angle O C E = Real.pi / 2) 
    (h_tangent_at_D : EuclideanGeometry.angle O D E = Real.pi / 2) 
    (hB_ne_C : B ≠ C) (hA_ne_D : A ≠ D)
    (h_lines_BC_AD_not_parallel : ¬ (line[ℝ, B, C] ∥ line[ℝ, A, D])) 
    (hF_on_line_BC : F ∈ line[ℝ, B, C]) 
    (hF_on_line_AD : F ∈ line[ℝ, A, D]) 
    (hE_ne_F : E ≠ F)
    (h_lines_EF_AB_not_parallel : ¬ (line[ℝ, E, F] ∥ line[ℝ, A, B])) 
    (hM_on_line_EF : M ∈ line[ℝ, E, F]) 
    (hM_on_line_AB : M ∈ line[ℝ, A, B]) : 
    Concyclic ({E, C, M, D} : Set PPoint) := 
  sorry
