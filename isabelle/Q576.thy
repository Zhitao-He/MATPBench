theory Triangle_Problem_Compilation
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
  "HOL-Analysis.Trigonometry"
begin
theorem find_c_value:
  fixes A B C :: "real_inner_space" 
    and a b c :: real 
  assumes
    distinct_points: "A ≠ B ∧ B ≠ C ∧ A ≠ C" and
    triangle_sides: "a = dist C B ∧ b = dist C A ∧ c = dist A B" and
    b_is_18: "b = 18" and
    angle_CAB_is_30_deg: "angle (B - A) (C - A) = pi / 6" and 
    angle_ABC_is_60_deg: "angle (A - B) (C - B) = pi / 3" and 
    angle_BCA_is_90_deg: "angle (A - C) (B - C) = pi / 2"     
  shows "c = 12 * sqrt 3"
proof -
  have norm_CB_nz: "norm (C - B) ≠ 0" using distinct_points triangle_sides by (simp add: norm_eq_dist dist_commute dist_nz_iff)
  have norm_AB_nz: "norm (A - B) ≠ 0" using distinct_points triangle_sides by (simp add: norm_eq_dist dist_commute dist_nz_iff)
  have norm_CA_nz: "norm (C - A) ≠ 0" using distinct_points triangle_sides by (simp add: norm_eq_dist dist_commute dist_nz_iff)
  have norm_BA_nz: "norm (B - A) ≠ 0" using distinct_points triangle_sides by (simp add: norm_eq_dist dist_nz_iff)
  have sine_eq: "a * sin (angle (A - B) (C - B)) = b * sin (angle (B - A) (C - A))"
    by (rule sine_rule_euclidean[of A B C, OF norm_CB_nz norm_AB_nz norm_CA_nz norm_BA_nz])
  from sine_eq angle_ABC_is_60_deg angle_CAB_is_30_deg
  have "a * sin (pi/3) = b * sin (pi/6)" by simp
  also have "sin (pi/3) = sqrt 3 / 2" by (rule sin_pi_three)
  also have "sin (pi/6) = 1/2" by (rule sin_pi_six)
  finally have step1_eq: "a * (sqrt 3 / 2) = b * (1/2)".
  from step1_eq b_is_18 have "a * (sqrt 3 / 2) = 18 * (1/2)" by simp
  then have "a * sqrt 3 = 18" by (simp add: field_simps)
  then have a_val_calc: "a = 18 / sqrt 3"
  proof (cases "sqrt 3 = 0")
    case True
    then have "3 = 0" by (simp add: power2_eq_square sqr_sqrt zero_le_three)
    then show ?thesis by contradiction
  qed (simp add: field_simps)
  also have "... = (18 * sqrt 3) / (sqrt 3 * sqrt 3)"
    by (rule real_div_mult_mult) (simp add: sqrt_neq_zero zero_le_three)
  also have "sqrt 3 * sqrt 3 = 3" by (simp add: power2_eq_square sqr_sqrt zero_le_three)
  also have "(18 * sqrt 3) / 3 = 6 * sqrt 3" by (simp add: field_simps)
  finally have a_value: "a = 6 * sqrt 3".
  have right_angle_at_C: "inner (A - C) (B - C) = 0"
  proof
    from angle_BCA_is_90_deg have "cos (angle (A - C) (B - C)) = cos (pi / 2)" by simp
    also have "cos (pi / 2) = 0" by (rule cos_pi_half)
    finally have cos_gamma_is_0: "cos (angle (A - C) (B - C)) = 0".
    from cos_gamma_is_0 have "inner (A - C) (B - C) / (norm (A - C) * norm (B - C)) = 0"
      by (simp add: angle_cos norm_CA_nz norm_CB_nz)
    then show "inner (A - C) (B - C) = 0" using norm_CA_nz norm_CB_nz by simp
  qed
  have pythagorean_identity: "c^2 = a^2 + b^2"
  proof
    from right_angle_at_C
    have "dist A B⇧2 = dist C A⇧2 + dist C B⇧2"
      by (rule pythagorean_theorem_euclidean[of C A B, unfolded dist_commute])
    then show ?thesis using triangle_sides by (simp add: power2_eq_square)
  qed
  from pythagorean_identity a_value b_is_18
  have "c^2 = (6 * sqrt 3)^2 + 18^2" by simp
  also have "(6 * sqrt 3)^2 = 6^2 * (sqrt 3)^2" by (rule power_mult_distrib)
  also have "... = 36 * 3" by (simp add: power2_eq_square sqr_sqrt zero_le_three)
  also have "... = 108" by simp
  also have "18^2 = 324" by (simp add: power2_eq_square)
  finally have c_squared_value: "c^2 = 108 + 324".
  then have "c^2 = 432" by simp.
  have c_is_positive: "c > 0"
  proof
    from distinct_points have "A ≠ B" by simp
    then have "dist A B > 0" by (rule dist_pos_iff)
    then show ?thesis using triangle_sides by simp
  qed
  from `c^2 = 432` have "c * c = 432" by (simp add: power2_eq_square)
  with c_is_positive have "c = sqrt 432" by (simp add: sqrt_eq_iff_sqr_eq_nonneg)
  also have "sqrt 432 = sqrt (144 * 3)" by (simp cong: sqrt_cong)
  also have "... = sqrt 144 * sqrt 3"
    by (rule sqrt_mult) (simp_all add: zero_le_144 zero_le_three)
  also have "sqrt 144 = 12"
    by (simp add: sqrt_def_real) 
  finally show "c = 12 * sqrt 3".
qed
end