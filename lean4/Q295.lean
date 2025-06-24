import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.VecNotation
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.LinearAlgebra.AffineSpace.Midpoint 
open Real
abbrev EucSpace := Fin 3 → ℝ
noncomputable def A_pt : Fin 3 → ℝ := ![0, 0, 0]
noncomputable def B_pt : Fin 3 → ℝ := ![12, 0, 0]
noncomputable def C_pt : Fin 3 → ℝ := ![6, 6 * sqrt 3, 0]
noncomputable def D_pt : Fin 3 → ℝ := A_pt + (![0, 0, 16] : Fin 3 → ℝ)
noncomputable def E_pt : Fin 3 → ℝ := B_pt + (![0, 0, 16] : Fin 3 → ℝ)
noncomputable def F_pt : Fin 3 → ℝ := C_pt + (![0, 0, 16] : Fin 3 → ℝ)
noncomputable def M_pt : EucSpace := D_pt +ᵥ (4/12 : ℝ) • (E_pt -ᵥ D_pt)
noncomputable def N_pt : EucSpace := D_pt +ᵥ (2/12 : ℝ) • (F_pt -ᵥ D_pt)
noncomputable def Q_pt : EucSpace := C_pt +ᵥ (8/12 : ℝ) • (A_pt -ᵥ C_pt)
noncomputable def coplanar_MNPQ (P : EucSpace) : Prop := sorry
noncomputable def crossProduct (v w : EucSpace) : EucSpace := sorry
noncomputable def calculated_volume_QPCDMN (P_param : EucSpace) : ℝ :=
  let H : ℝ := 16
  let Area_DMN : ℝ := (1/2) * ‖crossProduct (M_pt -ᵥ D_pt) (N_pt -ᵥ D_pt)‖
  let Area_QPC : ℝ := (1/2) * ‖crossProduct (Q_pt -ᵥ C_pt) (P_param -ᵥ C_pt)‖
  let K_CD : EucSpace := midpoint ℝ C_pt D_pt
  let K_MQ : EucSpace := midpoint ℝ M_pt Q_pt
  let K_NP : EucSpace := midpoint ℝ N_pt P_param
  let Area_Midsection : ℝ := (1/2) * ‖crossProduct (K_MQ -ᵥ K_CD) (K_NP -ᵥ K_CD)‖
  (H / 6) * (Area_DMN + Area_QPC + 4 * Area_Midsection)
theorem problem_statement_to_prove (P_sol : EucSpace)
    (h_P_on_CB : P_sol ∈ segment ℝ C_pt B_pt)
    (h_MNPQ_coplanar : coplanar_MNPQ P_sol) :
  calculated_volume_QPCDMN P_sol = (224 * sqrt 3) / 3 := by sorry
lemma M_pt_on_DE : M_pt ∈ segment ℝ D_pt E_pt := by sorry
lemma DM_dist_is_4 : dist D_pt M_pt = 4 := by sorry
lemma N_pt_on_DF : N_pt ∈ segment ℝ D_pt F_pt := by sorry
lemma DN_dist_is_2 : dist D_pt N_pt = 2 := by sorry
lemma Q_pt_on_CA : Q_pt ∈ segment ℝ C_pt A_pt := by sorry
lemma CQ_dist_is_8 : dist C_pt Q_pt = 8 := by sorry
