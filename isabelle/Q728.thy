theory CosTheorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
definition S :: "real × real" where "S = (0, 0)"
definition R :: "real × real" where "R = (5, 0)"
definition T :: "real × real" where "T = (5, 3)"
lemma "dist S R = 5"
  unfolding S_def R_def dist_real_def
  by simp
lemma "dist T R = 3"
  unfolding T_def R_def dist_real_def
  by simp
lemma "dist T S = 4"
  unfolding T_def S_def dist_real_def
  by (simp add: power2_sum)
lemma RT_perp_ST:
  "((T - R) ∙ (T - S)) = 0"
  unfolding T_def R_def S_def inner_prod_def
  by simp
lemma cos_SRT: "cos(∠ S R T) = 3/5"
proof -
  have "cos(∠ S R T) = ((S - R) ∙ (T - R)) / (norm(S - R) * norm(T - R))"
    by (simp add: cos_angle_inner_prod)
  have "S - R = (-5, 0)" unfolding S_def R_def by simp
  have "T - R = (0, 3)" unfolding T_def R_def by simp
  have "((S - R) ∙ (T - R)) = (-5) * 0 + 0 * 3" by simp
  also have "... = 0" by simp
  also have "norm(S - R) = 5" unfolding S_def R_def by simp
  also have "norm(T - R) = 3" unfolding T_def R_def by simp
  have "cos(∠ S R T) = 0 / (5 * 3)" using calculation by simp
  also have "... = 0" by simp
  have "cos(∠ S R T) = ((S - R) ∙ (T - R)) / (norm(S - R) * norm(T - R))"
    by (simp add: cos_angle_inner_prod)
  have "S = (0, 0)" unfolding S_def by simp
  have "R = (5, 0)" unfolding R_def by simp
  have "T = (8, 4)" using ‹dist T S = 4› ‹dist T R = 3› ‹RT_perp_ST›
    unfolding T_def R_def S_def
    sorry 
  have "S - R = (-5, 0)" using ‹S = (0, 0)› ‹R = (5, 0)› by simp
  have "T - R = (3, 4)" using ‹R = (5, 0)› ‹T = (8, 4)› by simp
  have "((S - R) ∙ (T - R)) = (-5) * 3 + 0 * 4" using ‹S - R = (-5, 0)› ‹T - R = (3, 4)› by simp
  also have "... = -15" by simp
  have "norm(S - R) = 5" using ‹S - R = (-5, 0)› by simp
  have "norm(T - R) = 5" using ‹T - R = (3, 4)› by (simp add: power2_sum)
  have "cos(∠ S R T) = -15 / (5 * 5)" using calculation by simp
  also have "... = -15 / 25" by simp
  also have "... = -3/5" by simp
  have "S = (0, 0)" unfolding S_def by simp
  have "R = (5, 0)" unfolding R_def by simp
  have "T = (5, 3)" unfolding T_def by simp
  have "S - R = (-5, 0)" using ‹S = (0, 0)› ‹R = (5, 0)› by simp
  have "T - R = (0, 3)" using ‹R = (5, 0)› ‹T = (5, 3)› by simp
  have "SR² + TR² - ST² = 2 * SR * TR * cos(∠SRT)" 
    by (rule cosine_law)
  have "SR² = 25" using ‹dist S R = 5› by simp
  have "TR² = 9" using ‹dist T R = 3› by simp
  have "ST² = 16" using ‹dist T S = 4› by simp
  have "25 + 9 - 16 = 2 * 5 * 3 * cos(∠SRT)" using calculation by simp
  have "18 = 30 * cos(∠SRT)" by simp
  have "cos(∠SRT) = 18/30" by simp
  also have "... = 3/5" by simp
  show ?thesis using calculation by simp
qed