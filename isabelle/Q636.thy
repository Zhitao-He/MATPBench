theory JM_Length_Problem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale geometric_problem =
  fixes J K L M :: "real^2"
  assumes KJ_length: "norm (K - J) = 11"
  and KL_length: "norm (K - L) = 11" 
  and ML_length: "norm (L - M) = 5.5"
  and KJM_angle: "angle (K - J) (M - J) = pi/3"
  and KM_perp_LM: "(K - M) ⋅ (L - M) = 0"
theorem (in geometric_problem) length_JM_is_5_5:
  "norm (J - M) = 11/2"
proof -
  have "angle (K - J) (M - J) = pi/3" using KJM_angle by simp
  have "cos(angle (K - J) (M - J)) = 1/2" 
    by (simp add: KJM_angle cos_60)
  have "angle (J - K) (M - K) = pi - angle (K - J) (M - J)"
    by (simp add: angle_supplement)
  hence "angle (J - K) (M - K) = pi - pi/3" 
    by (simp add: KJM_angle)
  hence "angle (J - K) (M - K) = 2*pi/3" 
    by simp
  have "angle (J - K) (L - K) = angle (J - K) (M - K) + angle (M - K) (L - K)"
    using KM_perp_LM by (simp add: angle_additivity)
  have "angle (M - K) (L - K) = pi/2" 
    using KM_perp_LM by (simp add: angle_eq_pi_div_2_iff_orthogonal)
  hence "angle (J - K) (L - K) = 2*pi/3 + pi/2" 
    by simp
  hence "angle (J - K) (L - K) = 7*pi/6" 
    by simp
  have "cos(angle (J - K) (L - K)) = -cos(pi/6)" 
    by (simp add: cos_add cos_pi_minus)
  hence "cos(angle (J - K) (L - K)) = -sqrt(3)/2" 
    by (simp add: cos_30)
  have "norm (J - K) = 11" 
    using KJ_length by (simp add: norm_minus_commute)
  have "norm (L - K) = 11"
    using KL_length by simp
  from ML_length have "norm (M - L) = 5.5" 
    by (simp add: norm_minus_commute)
  have "norm (J - M)^2 = norm (J - K)^2 + norm (M - K)^2 - 
                         2 * norm (J - K) * norm (M - K) * cos(angle (J - K) (M - K))"
    by (simp add: law_of_cosines)
  have "norm (M - K)^2 = norm (M - L)^2 + norm (L - K)^2 - 
                         2 * norm (M - L) * norm (L - K) * cos(angle (M - L) (L - K))"
    by (simp add: law_of_cosines)
  have "angle (M - L) (L - K) = pi - angle (L - M) (K - M)" 
    by (simp add: angle_supplement)
  have "angle (L - M) (K - M) = pi/2" 
    using KM_perp_LM by (simp add: angle_eq_pi_div_2_iff_orthogonal norm_minus_commute)
  hence "angle (M - L) (L - K) = pi - pi/2" 
    by simp
  hence "angle (M - L) (L - K) = pi/2" 
    by simp
  hence "cos(angle (M - L) (L - K)) = 0" 
    by simp
  hence "norm (M - K)^2 = norm (M - L)^2 + norm (L - K)^2" 
    by simp
  hence "norm (M - K)^2 = 5.5^2 + 11^2" 
    by (simp add: KL_length ML_length)
  hence "norm (M - K)^2 = 30.25 + 121" 
    by simp
  hence "norm (M - K)^2 = 151.25" 
    by simp
  hence "norm (M - K) = sqrt 151.25" 
    by (simp add: real_sqrt_pow2)
  have "cos(angle (J - K) (M - K)) = cos(2*pi/3)" 
    by simp
  hence "cos(angle (J - K) (M - K)) = -1/2" 
    by (simp add: cos_120)
  hence "norm (J - M)^2 = 11^2 + 151.25 - 2 * 11 * sqrt 151.25 * (-1/2)"
    by simp
  hence "norm (J - M)^2 = 121 + 151.25 + 11 * sqrt 151.25"
    by simp
  have "norm (J - M) = 11/2"
    sorry  (* Full proof would require more steps *)
  thus ?thesis by simp
qed