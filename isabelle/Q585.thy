theory Trapezoid_Midsegment_Problem
  imports "HOL-Analysis.Vector_Spaces"
begin
theorem midsegment_length_trapezoid:
  fixes P Q S R :: "'a :: real_vector" 
  and M N :: "'a :: real_vector"     
  assumes M_midpoint_PS: "M = (P + S) /⇩R 2"  
  and N_midpoint_QR: "N = (Q + R) /⇩R 2"  
  and bases_parallel_same_dir: "∃c≥0. (Q - P) = c *⇩R (R - S)"
shows "dist M N = (dist P Q + dist S R) / 2"
proof
  from bases_parallel_same_dir obtain c where c_def: "(Q - P) = c *⇩R (R - S)" and c_nonneg: "c ≥ 0"
    by metis
  have vec_MN_intermediate: "N - M = ((Q - P) + (R - S)) /⇩R 2"
    by (simp add: M_midpoint_PS N_midpoint_QR real_vector.divide_sub_distrib real_vector.divide_add_distrib algebra_simps)
  have expr_N_minus_M: "N - M = ((c + 1) /⇩R 2) *⇩R (R - S)"
  proof -
    have "(Q - P) + (R - S) = c *⇩R (R - S) + (R - S)" by (subst c_def) simp
    also have "... = c *⇩R (R - S) + 1 *⇩R (R - S)" by (simp only: one_scale_right)
    also have "... = (c + 1) *⇩R (R - S)" by (rule real_vector.add_scale_distrib_left [symmetric])
    finally have num_eq: "(Q - P) + (R - S) = (c + 1) *⇩R (R - S)".
    from num_eq have "((Q - P) + (R - S)) /⇩R 2 = ((c + 1) *⇩R (R - S)) /⇩R 2" by simp
    also have "... = ((c+1)/⇩R 2) *⇩R (R-S)" by (rule real_vector.scale_divide_distrib_left)
    finally show ?thesis by (simp only: vec_MN_intermediate)
  qed
  have dist_MN_abs: "dist M N = abs((c + 1) /⇩R 2) * dist S R"
    by (simp add: dist_eq_norm expr_N_minus_M norm_scaleR dist_commute[of S R])
  have abs_eq_val: "abs((c + 1) /⇩R 2) = (c + 1) /⇩R 2"
  proof
    from c_nonneg have "c + 1 > 0" by linarith 
    hence "(c+1)/⇩R 2 > 0" by (rule half_gt_zero_iff) 
    thus ?thesis by (simp add: abs_of_pos)
  qed
  have dist_MN_almost_final: "dist M N = (c * dist S R + dist S R) / 2"
    by (simp add: dist_MN_abs abs_eq_val field_simps add_divide_distrib distrib_right)
  have dist_PQ_eq_c_dist_SR: "dist P Q = c * dist S R"
    by (simp add: dist_eq_norm c_def norm_scaleR abs_of_nonneg c_nonneg dist_commute[of S R])
  show ?thesis by (simp only: dist_MN_almost_final dist_PQ_eq_c_dist_SR)
qed
context
  fixes Q R S T U V :: "'a :: real_vector" 
  assumes length_RQ: "dist R Q = 5"
  and length_VS: "dist V S = 11"
  and S_midpoint_RT: "S = (R + T) /⇩R 2"  
  and V_midpoint_QU: "V = (Q + U) /⇩R 2"  
  assumes trapezoid_QUTR: "∃k≥0. (Q - R) = k *⇩R (T - U)"
begin
theorem length_UT_is_17: "dist U T = 17"
proof -
  have midsegment_formula: "dist V S = (dist Q R + dist U T) / 2"
    by (rule midsegment_length_trapezoid[
            where P=Q and Q=R and S=U and R=T and M=V and N=S, 
            OF V_midpoint_QU S_midpoint_RT trapezoid_QUTR])
  have "11 = (5 + dist U T) / 2"
    by (simp only: midsegment_formula length_RQ length_VS dist_commute[of Q R])
  then have "2 * 11 = 5 + dist U T"
    by (metis real_half_eq_iff_mul_2) 
  then have "22 = 5 + dist U T" by simp
  then have "dist U T = 22 - 5" by simp
  then show "dist U T = 17" by simp
qed
end 
end