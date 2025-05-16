theory Value_y_theorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
context
  fixes P Q R S :: "real^2"
  assumes PQ_perp_RQ: "(Q - P) ⦁ (R - Q) = 0"
      and RS_perp_QS: "(S - R) ⦁ (Q - S) = 0"
      and PS_eq_2: "norm (P - S) = 2"
      and SR_eq_4: "norm (S - R) = 4"
      and S_on_PR: "∃a. 0 < a ∧ a < 1 ∧ S = (1 - a) *⇩R P + a *⇩R R"
  definition y :: real where "y = norm (P - Q)"
  theorem value_y_eq_2sqrt3: "y = 2 * sqrt 3"
begin
  from S_on_PR obtain a where a_props: "0 < a" "a < 1" "S = (1 - a) *⇩R P + a *⇩R R"
    by auto
  have RS_eq: "S - R = (1 - a) *⇩R P + a *⇩R R - R" using a_props(3) by simp
  also have "... = (1 - a) *⇩R P - (1 - a) *⇩R R" by (simp add: algebra_simps)
  also have "... = (1 - a) *⇩R (P - R)" by (simp add: vector_space_over_itself.scale_right_diff_distrib)
  finally have RS_eq: "S - R = (1 - a) *⇩R (P - R)" .
  have PS_eq: "P - S = P - ((1 - a) *⇩R P + a *⇩R R)" using a_props(3) by simp
  also have "... = P - (1 - a) *⇩R P - a *⇩R R" by (simp add: algebra_simps)
  also have "... = a *⇩R P - a *⇩R R" by (simp add: algebra_simps)
  also have "... = a *⇩R (P - R)" by (simp add: vector_space_over_itself.scale_right_diff_distrib)
  finally have PS_eq: "P - S = a *⇩R (P - R)" .
  have norm_PS: "norm (P - S) = a * norm (P - R)" using PS_eq by simp
  have norm_RS: "norm (S - R) = (1 - a) * norm (P - R)" using RS_eq by simp
  have "2 = norm (P - S)" using PS_eq_2 by simp
  also have "... = a * norm (P - R)" using norm_PS by simp
  finally have eq1: "2 = a * norm (P - R)" .
  have "4 = norm (S - R)" using SR_eq_4 by simp
  also have "... = (1 - a) * norm (P - R)" using norm_RS by simp
  finally have eq2: "4 = (1 - a) * norm (P - R)" .
  from eq1 have "norm (P - R) = 2 / a" by (simp add: field_simps)
  with eq2 have "4 = (1 - a) * (2 / a)" by simp
  hence "4 * a = 2 * (1 - a)" by (simp add: field_simps)
  hence "4 * a = 2 - 2 * a" by simp
  hence "6 * a = 2" by simp
  hence "a = 1/3" by simp
  have PR_dist: "norm (P - R) = 2 / a" using eq1 by (simp add: field_simps)
  with `a = 1/3` have "norm (P - R) = 6" by simp
  have "P - R = (P - Q) + (Q - R)" by simp
  hence PR_decomp: "(P - R) ⦁ (P - R) = (P - Q) ⦁ (P - Q) + 2 * ((P - Q) ⦁ (Q - R)) + (Q - R) ⦁ (Q - R)"
    by (simp add: inner_simps)
  have "(P - Q) ⦁ (Q - R) = 0" using PQ_perp_RQ by (simp add: inner_simps)
  with PR_decomp have "(P - R) ⦁ (P - R) = (P - Q) ⦁ (P - Q) + (Q - R) ⦁ (Q - R)"
    by simp
  hence "norm (P - R)^2 = norm (P - Q)^2 + norm (Q - R)^2"
    by (simp add: power2_norm_eq_inner)
  have "36 = norm (P - Q)^2 + norm (Q - R)^2" using `norm (P - R) = 6` by simp
  have triangle_PQR: "norm (P - Q)^2 + norm (Q - R)^2 = 36" by fact
  let ?x = "norm (Q - R)"
  have "y^2 + ?x^2 = 36" using triangle_PQR y_def by simp
  have "Q - R = (Q - S) + (S - R)" by simp
  hence "(Q - R) ⦁ (Q - R) = (Q - S) ⦁ (Q - S) + 2 * ((Q - S) ⦁ (S - R)) + (S - R) ⦁ (S - R)"
    by (simp add: inner_simps)
  have "(Q - S) ⦁ (S - R) = 0" using RS_perp_QS by (simp add: inner_simps)
  hence "(Q - R) ⦁ (Q - R) = (Q - S) ⦁ (Q - S) + (S - R) ⦁ (S - R)"
    by simp
  hence "norm (Q - R)^2 = norm (Q - S)^2 + norm (S - R)^2"
    by (simp add: power2_norm_eq_inner)
  have "?x^2 = norm (Q - S)^2 + 16" using SR_eq_4 by simp
  have "S - P = (S - Q) + (Q - P)" by simp
  hence "(S - P) ⦁ (S - P) = (S - Q) ⦁ (S - Q) + 2 * ((S - Q) ⦁ (Q - P)) + (Q - P) ⦁ (Q - P)"
    by (simp add: inner_simps)
  have "(S - Q) ⦁ (Q - P) = 0" using RS_perp_QS by (simp add: inner_simps flip: inner_commute)
  hence "(S - P) ⦁ (S - P) = (S - Q) ⦁ (S - Q) + (Q - P) ⦁ (Q - P)"
    by simp
  hence "norm (S - P)^2 = norm (S - Q)^2 + norm (Q - P)^2"
    by (simp add: power2_norm_eq_inner)
  have "4 = norm (S - Q)^2 + y^2" using PS_eq_2 y_def by simp
  hence "norm (Q - S)^2 = 4 - y^2" by (simp add: norm_minus_commute)
  have "?x^2 = 4 - y^2 + 16" using `?x^2 = norm (Q - S)^2 + 16` `norm (Q - S)^2 = 4 - y^2` by simp
  hence "?x^2 = 20 - y^2" by simp
  from `y^2 + ?x^2 = 36` and `?x^2 = 20 - y^2` have "y^2 + 20 - y^2 = 36" by simp
  hence "y^2 = 12" by simp
  from this have "y = sqrt 12" using y_def by (metis norm_ge_zero real_sqrt_mult real_sqrt_pow2)
  also have "... = 2 * sqrt 3" by simp
  finally show "y = 2 * sqrt 3" .
  