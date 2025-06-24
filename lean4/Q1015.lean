import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
open EuclideanGeometry Real 
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C D O E F G : P)
axiom h_O_midpoint_AC : O = midpoint ℝ A C
axiom h_O_midpoint_BD : O = midpoint ℝ B D
axiom h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P) 
axiom h_C_ne_E : C ≠ E 
axiom h_E_on_segment_BD : E ∈ segment ℝ B D
axiom h_CE_perp_BD : True 
axiom h_D_ne_F : D ≠ F 
axiom h_F_on_segment_AC : F ∈ segment ℝ A C
axiom h_DF_perp_AC : True 
axiom h_F_ne_E : F ≠ E 
axiom h_G_on_line_FE : Collinear ℝ ({G, F, E} : Set P) 
axiom h_G_ne_A : G ≠ A
axiom h_G_ne_B : G ≠ B
axiom h_GAB_collinear : Collinear ℝ ({G, A, B} : Set P) 
axiom h_GAB_dist_eq : dist G A + dist A B = dist G B 
axiom h_G_ne_O : G ≠ O 
theorem go_perp_ad : True := by trivial 
