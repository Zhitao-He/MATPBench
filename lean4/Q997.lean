import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace ProblemFormalization
open EuclideanGeometry 
open InnerProductSpace 
open Real 
abbrev Pl_pts := EuclideanSpace ℝ (Fin 2)
variable (A B C P Q D E F G M N L : Pl_pts)
variable (rP rQ : ℝ)
axiom hA_ne_B : A ≠ B
axiom hA_ne_C : A ≠ C
axiom hB_ne_C : B ≠ C
axiom h_ABC_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set Pl_pts)
axiom hD_on_line_CB : D ∈ affineSpan ℝ ({C, B} : Set Pl_pts)
axiom h_wbtw_C_B_D : Wbtw ℝ C B D
axiom hD_ne_B : D ≠ B 
axiom hE_on_line_CA : E ∈ affineSpan ℝ ({C, A} : Set Pl_pts)
axiom h_wbtw_C_A_E : Wbtw ℝ C A E
axiom hE_ne_A : E ≠ A 
axiom hPD_perp_CB : inner ℝ (P -ᵥ D) (B -ᵥ C) = 0
axiom hPE_perp_CA : inner ℝ (P -ᵥ E) (A -ᵥ C) = 0
axiom h_dist_PD_eq_rP : dist P D = rP
axiom h_dist_PE_eq_rP : dist P E = rP
axiom h_rP_pos : rP > 0 
axiom hF_on_line_BC : F ∈ affineSpan ℝ ({B, C} : Set Pl_pts)
axiom h_wbtw_B_C_F : Wbtw ℝ B C F
axiom hF_ne_C : F ≠ C 
axiom hG_on_line_BA : G ∈ affineSpan ℝ ({B, A} : Set Pl_pts)
axiom h_wbtw_B_A_G : Wbtw ℝ B A G
axiom hG_ne_A : G ≠ A 
axiom hQF_perp_BC : inner ℝ (Q -ᵥ F) (C -ᵥ B) = 0
axiom hQG_perp_BA : inner ℝ (Q -ᵥ G) (A -ᵥ B) = 0
axiom h_dist_QF_eq_rQ : dist Q F = rQ
axiom h_dist_QG_eq_rQ : dist Q G = rQ
axiom h_rQ_pos : rQ > 0 
axiom hD_ne_E : D ≠ E
axiom hF_ne_G : F ≠ G
axiom hP_ne_Q : P ≠ Q
axiom hM_on_line_DE : M ∈ affineSpan ℝ ({D, E} : Set Pl_pts)
axiom hM_on_line_PQ : M ∈ affineSpan ℝ ({P, Q} : Set Pl_pts)
axiom hN_on_line_FG : N ∈ affineSpan ℝ ({F, G} : Set Pl_pts)
axiom hN_on_line_PQ : N ∈ affineSpan ℝ ({P, Q} : Set Pl_pts)
axiom hB_ne_N : B ≠ N
axiom hC_ne_M : C ≠ M
axiom hL_on_line_BN : L ∈ affineSpan ℝ ({B, N} : Set Pl_pts)
axiom hL_on_line_CM : L ∈ affineSpan ℝ ({C, M} : Set Pl_pts)
axiom hA_ne_L : A ≠ L
theorem AL_bisects_angle_BAC :
  EuclideanGeometry.angle B A L = EuclideanGeometry.angle C A L := by sorry
end ProblemFormalization
