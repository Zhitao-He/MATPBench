import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Sqrt 
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
def h_AC_len (A C : P) : Prop := dist A C = 6
def h_BD_len (B D : P) : Prop := dist B D = 2
def h_ACB_is_right (A C B : P) : Prop := ∠ A C B = Real.pi / 2
def h_CDB_collinear (C D B : P) : Prop := Collinear ℝ ({C, D, B} : Set P)
def h_D_on_segment_CB (C B D : P) : Prop := D ∈ segment ℝ C B
def h_P_pt_on_circle_CD_diam (P_pt C D : P) : Prop := inner ℝ (P_pt -ᵥ C) (P_pt -ᵥ D) = 0
def h_P_pt_on_line_AD (A P_pt D : P) : Prop := Collinear ℝ ({A, P_pt, D} : Set P)
def h_APB_is_right (A P_pt B : P) : Prop := ∠ A P_pt B = Real.pi / 2
theorem length_AB_is_2_sqrt_13
  (A B C D P_pt : P)
  (h1 : h_AC_len A C)
  (h2 : h_BD_len B D)
  (h3 : h_ACB_is_right A C B)
  (h4 : h_CDB_collinear C D B)
  (h5 : h_D_on_segment_CB C B D)
  (h6 : h_P_pt_on_circle_CD_diam P_pt C D)
  (h7 : h_P_pt_on_line_AD A P_pt D)
  (h8 : h_APB_is_right A P_pt B)
  : dist A B = 2 * Real.sqrt 13 := by
  sorry
