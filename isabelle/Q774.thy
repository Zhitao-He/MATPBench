theory Geometry_Problem
imports Main
begin
typedecl point
axiomatization length :: "point => point => real"
  where
    length_non_neg: "length A B ≥ 0" and 
    length_symmetric: "length A B = length B A" and 
    length_zero_iff_eq: "length A B = 0 ↔ A = B" 
axiomatization collinear_between :: "point => point => point => bool"
  where
    between_implies_length_add: "collinear_between A B C ⟹ length A B + length B C = length A C"
axiomatization parallel :: "point => point => point => point => bool"
axiomatization thales_theorem_statement:
  assumes S_T_P_collinear_ordered: "collinear_between S T P" 
    and S_R_Q_collinear_ordered: "collinear_between S R Q" 
    and S_neq_T: "S ≠ T" 
    and T_neq_P: "T ≠ P" 
    and S_neq_R: "S ≠ R" 
    and R_neq_Q: "R ≠ Q" 
    and TR_parallel_PQ: "parallel T R P Q" 
    and PQ_len_pos: "length P Q > 0" 
    and TR_len_pos: "length T R > 0" 
    and SP_len_pos: "length S P > 0" 
    and ST_len_pos: "length S T > 0" 
  shows "(length S T) / (length S P) = (length T R) / (length P Q)" 
lemma find_PS:
  fixes S T P R Q :: point
  assumes len_QP: "length Q P = 24"
    and len_RT: "length R T = 16"
    and len_ST: "length S T = 9"
    and cond_STP: "collinear_between S T P" 
    and cond_SRQ: "collinear_between S R Q" 
    and cond_S_neq_T: "S ≠ T"
    and cond_T_neq_P: "T ≠ P"
    and cond_S_neq_R: "S ≠ R"
    and cond_R_neq_Q: "R ≠ Q"
    and cond_parallel: "parallel T R P Q"
  shows "length S P = 27/2" 
proof -
  have st_val: "length S T = 9" by (simp add: len_ST) .
  have rt_val: "length T R = 16" by (simp add: len_RT length_symmetric) . 
  have pq_val: "length P Q = 24" by (simp add: len_QP length_symmetric) . 
  have st_pos: "length S T > 0" using st_val by simp . 
  have rt_pos: "length T R > 0" using rt_val by simp . 
  have pq_pos: "length P Q > 0" using pq_val by simp . 
  have sp_pos: "length S P > 0"
  proof -
    from cond_STP obtain TP_len where stp_len_add: "length S T + length T P = length S P"
      by (metis between_implies_length_add)
    from cond_T_neq_P have tp_neq_zero: "length T P ≠ 0"
      by (metis length_zero_iff_eq) 
    from length_non_neg[of T P] have tp_ge_zero: "length T P ≥ 0" . 
    have tp_pos: "length T P > 0" using tp_neq_zero tp_ge_zero by linarith . 
    show ?thesis using stp_len_add st_pos tp_pos by linarith .
  qed
  have ratio_eq: "(length S T) / (length S P) = (length T R) / (length P Q)"
    by (rule thales_theorem_statement[OF
        cond_STP cond_SRQ cond_S_neq_T cond_T_neq_P cond_S_neq_R cond_R_neq_Q
        cond_parallel pq_pos rt_pos sp_pos st_pos]) .
  have subst_ratio: "9 / (length S P) = 16 / 24"
    by (simp add: ratio_eq st_val rt_val pq_val) .
  have simplified_ratio: "9 / (length S P) = 2 / 3" using subst_ratio by simp .
  from simplified_ratio
  have "length S P = 9 * (3/2)" using sp_pos 
    by (auto simp add: field_simps) 
  then show ?thesis by simp . 
qed
end