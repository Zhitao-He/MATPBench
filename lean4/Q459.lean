import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
abbrev P2 := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (p1 p2 p3 : P2) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
section RectangleProblem
noncomputable def A_pt : P2 := ![0, 0] 
variable (b d : ℝ)
variable (hb_pos : 0 < b) (hd_pos : 0 < d)
noncomputable def B_pt (b_val : ℝ) : P2 := ![b_val, 0] 
noncomputable def C_pt (b_val d_val : ℝ) : P2 := ![b_val, d_val] 
noncomputable def D_pt (d_val : ℝ) : P2 := ![0, d_val] 
variable (m_coord n_coord : ℝ)
variable (hm_on_AB_strict : 0 < m_coord ∧ m_coord < b)
variable (hn_on_BC_strict : 0 < n_coord ∧ n_coord < d)
noncomputable def M_pt (mc_val : ℝ) : P2 := ![mc_val, 0] 
noncomputable def N_pt (b_val nc_val : ℝ) : P2 := ![b_val, nc_val] 
def area_AMN_hyp (A M N : P2) : Prop := triangleArea A M N = 3
def area_MBN_hyp (M B N : P2) : Prop := triangleArea M B N = 20
def area_DCN_hyp (D C N : P2) : Prop := triangleArea D C N = 2
def area_DMN_goal (D M N : P2) : Prop := triangleArea D M N = 25
end RectangleProblem
theorem find_area_of_DMN :
  ∀ (b d : ℝ) (hb_pos : 0 < b) (hd_pos : 0 < d)
    (m_coord n_coord : ℝ)
    (hm_on_AB_strict : 0 < m_coord ∧ m_coord < b)
    (hn_on_BC_strict : 0 < n_coord ∧ n_coord < d),
    let A : P2 := ![0, 0]
    let B : P2 := ![b, 0]
    let C : P2 := ![b, d]
    let D : P2 := ![0, d]
    let M : P2 := ![m_coord, 0]
    let N : P2 := ![b, n_coord]
    (triangleArea A M N = 3) →
    (triangleArea M B N = 20) →
    (triangleArea D C N = 2) →
    triangleArea D M N = 25 :=
by
  sorry
