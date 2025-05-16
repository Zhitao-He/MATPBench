theory Rectangle_MNQR_Problem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale rectangle_problem =
  fixes M N Q R P :: "real^2"
  fixes x :: real
  assumes rect_NMRQ: "is_rectangle N M R Q"
  assumes P_on_NR: "P ∈ closed_segment N R"
  assumes P_on_MQ: "P ∈ closed_segment M Q"
  assumes NP_length: "norm (P - N) = 2 * x - 30"
  assumes NR_length: "norm (R - N) = 2 * x + 10"
context rectangle_problem
begin
theorem MP_equals_40: "norm (P - M) = 40"
proof -
  have diag_equal: "norm (Q - N) = norm (R - M)" 
    using rect_NMRQ by (simp add: is_rectangle_def)
  have "P = (N + R) / 2" using P_on_NR 
    by (simp add: midpoint_def closed_segment_def)
  moreover have "P = (M + Q) / 2" using P_on_MQ 
    by (simp add: midpoint_def closed_segment_def)
  have "norm (P - N) + norm (R - P) = norm (R - N)" 
    using P_on_NR by (simp add: closed_segment_def)
  hence "norm (R - P) = norm (R - N) - norm (P - N)" by simp
  hence "norm (R - P) = (2 * x + 10) - (2 * x - 30)" using NP_length NR_length by simp
  hence "norm (R - P) = 40" by simp
  hence "norm (P - M) = norm (R - P)" 
    using rect_NMRQ P_on_NR P_on_MQ by (metis (no_types, hide_lams) add.commute vector_add_divide_simps(2))
  thus "norm (P - M) = 40" by simp
qed