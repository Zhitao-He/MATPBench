theory CosineNMP
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

theorem value_cos_angle_NMP:
  fixes M N P :: "real^2"
  assumes "norm (N - M) = 39"
    and "norm (P - M) = 36"
    and "norm (N - P) = 15"
    and "((N - P) • (M - P)) = 0" (* MP⊥NP condition using dot product *)
  shows "cos (angle N M P) = 12/13"
proof -
  have "cos (angle N M P) = ((M - N) • (M - P)) / (norm (M - N) * norm (M - P))"
    by (simp add: cos_angle_eq)
    
  (* Using the perpendicular condition *)
  have "(N - P) • (M - P) = 0" by (simp add: assms(4))
  
  (* Calculate using the law of cosines *)
  have "norm (N - M)^2 = norm (N - P)^2 + norm (P - M)^2 - 2 * norm (N - P) * norm (P - M) * cos (angle N P M)"
    by (simp add: law_of_cosines)
    
  (* Since angle NPM is 90 degrees (perpendicular), cos(angle NPM) = 0 *)
  have "cos (angle N P M) = 0" 
    using assms(4) cos_angle_perpendicular by auto
    
  (* Substitute the values *)
  have "norm (N - M)^2 = norm (N - P)^2 + norm (P - M)^2"
    using ‹cos (angle N P M) = 0› by simp
    
  have "39^2 = 15^2 + 36^2" 
    using assms(1) assms(2) assms(3) ‹norm (N - M)^2 = norm (N - P)^2 + norm (P - M)^2› by simp
    
  (* Calculate cos(angle NMP) using dot product formula *)
  have "((N - M) • (P - M)) = (norm (N - M) * norm (P - M) * cos (angle N M P))"
    by (simp add: cos_angle_eq)
    
  (* Using the Pythagorean identity and the given values *)
  have "cos (angle N M P) = 12/13"
    using assms(1) assms(2) assms(3) assms(4)
    by (metis (no_types, lifting) power2_eq_square real_sqrt_mult_self real_sqrt_power2 real_sqrt_unique)
qed

end