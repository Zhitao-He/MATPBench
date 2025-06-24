import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
abbrev P₂ := EuclideanSpace ℝ (Fin 2) 
noncomputable section
def ab_len : ℝ := 5
def ad_len : ℝ := 8
def D_pt : P₂ := ![0, 0]
def A_pt : P₂ := ![0, ad_len]
def C_pt : P₂ := ![ab_len, 0]
def B_pt : P₂ := ![ab_len, ad_len]
lemma D_coord_x : D_pt 0 = 0 := by rfl
lemma D_coord_y : D_pt 1 = 0 := by rfl
lemma A_coord_x : A_pt 0 = 0 := by rfl
lemma A_coord_y : A_pt 1 = ad_len := by rfl
lemma C_coord_x : C_pt 0 = ab_len := by rfl
lemma C_coord_y : C_pt 1 = 0 := by rfl
lemma B_coord_x : B_pt 0 = ab_len := by rfl
lemma B_coord_y : B_pt 1 = ad_len := by rfl
def P_pt : P₂ := ![ab_len, ab_len]
lemma P_on_BC : P_pt 0 = ab_len ∧ 0 ≤ P_pt 1 ∧ P_pt 1 ≤ ad_len := by
  constructor
  · rfl
  · constructor
    · simp [P_pt, ab_len]
    · simp [P_pt, ab_len, ad_len]; norm_num
def Q_pt : P₂ := ![ab_len, ad_len - ab_len]
lemma Q_on_BC : Q_pt 0 = ab_len ∧ 0 ≤ Q_pt 1 ∧ Q_pt 1 ≤ ad_len := by
  constructor
  · rfl
  · constructor
    · simp [Q_pt, ab_len, ad_len]; norm_num
    · simp [Q_pt, ab_len, ad_len]
def R_pt : P₂ := ![ad_len/2, ad_len/2]
noncomputable def triangleArea (p1 p2 p3 : P₂) : ℝ :=
  (1/2 : ℝ) * abs ( (p1 0 * (p2 1 - p3 1)) + (p2 0 * (p3 1 - p1 1)) + (p3 0 * (p1 1 - p2 1)) )
def area_DRQ : ℝ := triangleArea D_pt R_pt Q_pt
def area_DQC : ℝ := triangleArea D_pt Q_pt C_pt
def area_DRQC : ℝ := area_DRQ + area_DQC
theorem area_of_DRQC_is_11_5 : area_DRQC = 11.5 := by
  sorry
lemma P_pt_coords : P_pt 0 = 5 ∧ P_pt 1 = 5 := by
  simp [P_pt, ab_len]
lemma Q_pt_coords : Q_pt 0 = 5 ∧ Q_pt 1 = 3 := by
  simp [Q_pt, ab_len, ad_len]; norm_num
lemma R_pt_coords : R_pt 0 = 4 ∧ R_pt 1 = 4 := by
  simp [R_pt, ad_len]; norm_num
lemma area_DRQ_val : area_DRQ = 4 := by
  simp [area_DRQ, triangleArea, D_pt, R_pt, Q_pt, ab_len, ad_len]
  norm_num
lemma area_DQC_val : area_DQC = 7.5 := by
  simp [area_DQC, triangleArea, D_pt, Q_pt, C_pt, ab_len, ad_len]
  norm_num
lemma area_DRQC_val_calc : area_DRQC = 11.5 := by
  rw [area_DRQC, area_DRQ_val, area_DQC_val]
  norm_num
end noncomputable section
