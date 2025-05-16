theory CosineAngle
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
theorem triangle_cosine_value:
  fixes S T R :: "real^2"
  assumes "norm (R - S) = 5"
          "norm (R - T) = 3"
          "norm (T - S) = 4"
          "(R - T) ⋅ (T - S) = 0"   
  have "((T - S) ⋅ (R - S))^2 = (norm (T - S))^2 * (norm (R - S))^2 * (((T - S) ⋅ (R - S)) / (norm (T - S) * norm (R - S)))^2"
    by (simp add: power_mult_distrib)
  have cos_TSR_eq: "((T - S) ⋅ (R - S)) / (norm (T - S) * norm (R - S)) = 
                   (norm (T - S)^2 + norm (R - S)^2 - norm (R - T)^2) / (2 * norm (T - S) * norm (R - S))"
    by (simp add: euclidean_representation)
  have "norm (T - S)^2 + norm (R - S)^2 - norm (R - T)^2 = 4^2 + 5^2 - 3^2"
    using assms by auto
  also have "... = 16 + 25 - 9"
    by simp
  also have "... = 32"
    by simp
  finally have num: "norm (T - S)^2 + norm (R - S)^2 - norm (R - T)^2 = 32" .
  have denom: "2 * norm (T - S) * norm (R - S) = 2 * 4 * 5"
    using assms by simp
  also have "... = 40"
    by simp
  finally have "2 * norm (T - S) * norm (R - S) = 40" .
  have "((T - S) ⋅ (R - S)) / (norm (T - S) * norm (R - S)) = 32 / 40"
    using cos_TSR_eq num denom by simp
  also have "... = 4/5"
    by simp
  finally show ?thesis .
qed