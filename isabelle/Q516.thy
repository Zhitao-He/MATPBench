theory Parallelogram_Problem
imports Complex_Main
begin
locale parallelogram_problem =
  fixes M N Q R L :: "complex"
  fixes x y w :: real
  assumes L_on_NR: "∃a b. 0 < a ∧ a < 1 ∧ b = 1 - a ∧ L = a * N + b * R"
  assumes L_on_MQ: "∃c d. 0 < c ∧ c < 1 ∧ d = 1 - c ∧ L = c * M + d * Q"
  assumes MN_length: "cmod (N - M) = 2*y + 5"
  assumes NQ_length: "cmod (Q - N) = 3*x + 2"
  assumes QR_length: "cmod (R - Q) = 3*y"
  assumes MR_length: "cmod (R - M) = 4*x - 2"
  assumes ML_length: "cmod (L - M) = w"
  assumes QL_length: "cmod (Q - L) = 12"
  assumes NMRQ_parallelogram: "N - M = R - Q"
begin
theorem w_equals_12: "w = 12"
proof -
  obtain a b where a_b_def: "0 < a" "a < 1" "b = 1 - a" "L = a * N + b * R"
    using L_on_NR by blast
  obtain c d where c_d_def: "0 < c" "c < 1" "d = 1 - c" "L = c * M + d * Q"
    using L_on_MQ by blast
  have "a = 1/2" "b = 1/2" "c = 1/2" "d = 1/2"
  proof -
    have "N - M = R - Q" using NMRQ_parallelogram by simp
    have "L = (N + R) / 2" "L = (M + Q) / 2"
    proof -
      have "L = (N + R) / 2"
      proof -
        have "L = a * N + b * R" using a_b_def(4) by simp
        moreover have "a + b = 1" using a_b_def(3) by simp
        moreover have "a = b" 
        proof -
          have "L = (N + R) / 2" 
          proof -
            have "N - M = R - Q" using NMRQ_parallelogram by simp
            hence "N + R = M + Q" by (metis add_diff_eq)
            hence "L = (M + Q) / 2" using c_d_def(1) c_d_def(2) c_d_def(3) c_d_def(4) by (simp add: field_simps)
            also have "... = (N + R) / 2" using ‹N + R = M + Q› by simp
            finally show ?thesis .
          qed
          hence "a * N + b * R = (N + R) / 2" using a_b_def(4) by simp
          hence "a * N + b * R = (1/2) * N + (1/2) * R" by simp
          hence "a = 1/2 ∧ b = 1/2" using a_b_def(3) ‹a + b = 1› by (metis add.commute add_eq_if diff_add_cancel divide_self_if mult.commute mult_cancel_right1 nonzero_divide_eq_eq real_vector.scale_add_right)
          thus "a = b" by simp
        qed
        ultimately show ?thesis by (simp add: field_simps)
      qed
      thus "L = (N + R) / 2" by simp
      have "L = c * M + d * Q" using c_d_def(4) by simp
      moreover have "c + d = 1" using c_d_def(3) by simp
      moreover have "c = d"
      proof -
        have "N + R = M + Q" using NMRQ_parallelogram by (metis add_diff_eq)
        hence "L = (M + Q) / 2" using ‹L = (N + R) / 2› by simp
        hence "c * M + d * Q = (M + Q) / 2" using c_d_def(4) by simp
        hence "c * M + d * Q = (1/2) * M + (1/2) * Q" by simp
        hence "c = 1/2 ∧ d = 1/2" using c_d_def(3) ‹c + d = 1› by (metis add.commute add_eq_if diff_add_cancel divide_self_if mult.commute mult_cancel_right1 nonzero_divide_eq_eq real_vector.scale_add_right)
        thus "c = d" by simp
      qed
      ultimately have "L = (M + Q) / 2" by (simp add: field_simps)
      thus "L = (M + Q) / 2" by simp
    qed
    hence "a = 1/2" "b = 1/2" "c = 1/2" "d = 1/2"
      using a_b_def(4) c_d_def(4) by (auto simp: field_simps)
    thus "a = 1/2" "b = 1/2" "c = 1/2" "d = 1/2" by auto
  qed
  have "c = 1/2" "d = 1/2" by fact+
  hence "L = (M + Q) / 2" using c_d_def(4) by (simp add: field_simps)
  hence "L - M = (Q - M) / 2" by (simp add: field_simps)
  hence "cmod (L - M) = cmod ((Q - M) / 2)" by simp
  hence "cmod (L - M) = cmod (Q - M) / 2" by (simp add: complex_mod_divide)
  have "L - Q = (M - Q) / 2" using ‹L = (M + Q) / 2› by (simp add: field_simps)
  hence "cmod (L - Q) = cmod ((M - Q) / 2)" by simp
  hence "cmod (L - Q) = cmod (M - Q) / 2" by (simp add: complex_mod_divide)
  hence "cmod (Q - L) = cmod (Q - M) / 2" by (metis cmod_minus_commute)
  have "w = cmod (L - M)" using ML_length by simp
  moreover have "12 = cmod (Q - L)" using QL_length by simp
  moreover have "cmod (Q - M) = cmod (L - M) * 2" using ‹cmod (L - M) = cmod (Q - M) / 2› by (simp add: field_simps)
  moreover have "cmod (Q - L) = cmod (Q - M) / 2" by fact
  ultimately have "12 = cmod (Q - M) / 2" by simp
  hence "cmod (Q - M) = 24" by simp
  hence "cmod (L - M) = 12" using ‹cmod (Q - M) = cmod (L - M) * 2› by simp
  thus "w = 12" using ‹w = cmod (L - M)› by simp
qed