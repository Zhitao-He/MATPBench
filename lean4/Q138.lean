import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
noncomputable section
local notation "P" => EuclideanSpace ℝ (Fin 2)
def A : P := ![0, 0]
def B : P := ![8, 0]
def D : P := ![0, 9]
def C : P := ![8, 9]
lemma dist_A_B_eq_len_AB : dist A B = 8 := by sorry
lemma dist_B_C_eq_len_BC : dist B C = 9 := by sorry
lemma angle_DAB_is_right : EuclideanGeometry.angle D A B = Real.pi / 2 := by sorry
lemma angle_ABC_is_right : EuclideanGeometry.angle A B C = Real.pi / 2 := by sorry
lemma angle_BCD_is_right : EuclideanGeometry.angle B C D = Real.pi / 2 := by sorry
lemma angle_CDA_is_right : EuclideanGeometry.angle C D A = Real.pi / 2 := by sorry
def H : P := ![8, 6]
lemma H_on_segment_BC : H ∈ segment ℝ B C := by sorry
lemma dist_B_H_eq_6 : dist B H = 6 := by sorry
def E : P := ![0, 5]
lemma E_on_segment_AD : E ∈ segment ℝ A D := by sorry
lemma dist_D_E_eq_4 : dist D E = 4 := by sorry
def G : P := ![20, 15]
lemma G_collinear_AH : Collinear ℝ ({A, H, G} : Set P) := by sorry
lemma G_collinear_EC : Collinear ℝ ({E, C, G} : Set P) := by sorry
def F : P := ![0, 15]
lemma F_on_line_AD : Collinear ℝ ({A, D, F} : Set P) := by sorry
lemma F_ne_G_for_angle : F ≠ G := by sorry
lemma F_ne_A_for_angle : F ≠ A := by sorry
lemma GF_perp_AF : EuclideanGeometry.angle G F A = Real.pi / 2 := by sorry
theorem target_length_GF : dist G F = 20 := by sorry
end
