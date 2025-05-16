theory GeometryProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale geometry_problem =
  fixes L K M N P R :: "real^2"
  assumes length_LR: "norm (R - L) = 10"
  and PM_eq_2KP: "norm (P - M) = 2 * norm (K - P)"
  and PR_parallel_KL: "∃c. c ≠ 0 ∧ (P - R) = c *⇩R (K - L)"
  and KN_perp_MN: "(K - N) ∙ (M - N) = 0"
  and RM_perp_PM: "(R - M) ∙ (P - M) = 0"
theorem (in geometry_problem) line_RM_length_20:
  "norm (R - M) = 20"
proof -
  have sim_RMP_LMK: "similar_triangles R M P L M K"
    sorry
  have "norm (P - M) / norm (K - M) = norm (R - M) / norm (L - M)"
    using sim_RMP_LMK
    sorry
  have "norm (P - M) = 2 * norm (K - P)"
    by (rule PM_eq_2KP)
  have "norm (R - M) = 2 * norm (L - R)"
    sorry
  have "norm (R - M) = 2 * 10"
    using length_LR
    sorry
  thus "norm (R - M) = 20"
    by simp
qed