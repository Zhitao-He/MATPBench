import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Sphere.SecondInter
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Analysis.Convex.Side 
open Affine AffineSubspace 
noncomputable section
abbrev P := EuclideanSpace ℝ (Fin 2)
section
theorem geometric_problem
  (O A B C D E F G : P)
  (Ω : EuclideanGeometry.Sphere P)
  (hO_center : Ω.center = O)
  (hA_on_Ω : A ∈ Ω)
  (hB_on_Ω : B ∈ Ω)
  (hC_on_Ω : C ∈ Ω)
  (hD_on_Ω : D ∈ Ω)
  (hΩ_radius_pos : Ω.radius > 0)
  (hA_ne_B : A ≠ B)
  (hAB_diameter_midpoint : Ω.center = midpoint ℝ A B)
  (hC_ne_D : C ≠ D)
  (hC_ne_A : C ≠ A)
  (hC_ne_B : C ≠ B)
  (hD_ne_A : D ≠ A)
  (hD_ne_B : D ≠ B)
  (hC_not_on_line_AB : C ∉ line[ℝ, A, B])
  (hD_not_on_line_AB : D ∉ line[ℝ, A, B])
  (hCD_same_side_AB : (line[ℝ, A, B]).WSameSide C D) 
  (hE_on_tangent_C : sorry) 
  (hE_on_tangent_D : sorry) 
  (hB_ne_C : B ≠ C)
  (hA_ne_D : A ≠ D)
  (hF_on_line_BC : F ∈ line[ℝ, B, C])
  (hF_on_line_AD : F ∈ line[ℝ, A, D])
  (hE_ne_B : E ≠ B)
  (hG_def : G = EuclideanGeometry.Sphere.secondInter Ω B (E -ᵥ B)) 
  (hG_ne_B : G ≠ B)
  (hE_ne_C_angle : E ≠ C)
  (hE_ne_F_angle : E ≠ F)
  (hG_ne_A_angle : G ≠ A)
  (hG_ne_F_angle : G ≠ F) :
  EuclideanGeometry.angle C E F = 2 * EuclideanGeometry.angle A G F := by sorry
end
end
