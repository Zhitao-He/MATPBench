theory CircleArcLength
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem arc_length_80_deg_inner_circle:
  fixes r_big r_small :: real
  assumes "0 < r_small"
    and "r_small = (1/2) * r_big"
    and "2 * pi * r_big = 36"
  defines "arc_angle_deg ≡ 80"
    and "arc_angle_rad ≡ (arc_angle_deg * pi) / 180"
    and "arc_length ≡ arc_angle_rad * r_small"
  shows "arc_length = 4 ⟷ arc_angle_deg = 80 ∧ r_small = 9 / pi"
proof -
  from assms(3) have "r_big = 36 / (2 * pi)" by (simp add: field_simps)
  with assms(2) have "r_small = 36 / (4 * pi)" by (simp add: field_simps)
  from assms(2,3) have "r_small = 9 / pi"
    by (simp add: field_simps)
  have "arc_length = (80 * pi / 180) * r_small"
    unfolding arc_angle_deg_def arc_angle_rad_def arc_length_def
    by simp
  also have "... = (4 * pi / 9) * r_small"
    by (simp add: field_simps)
  also have "... = (4 * pi / 9) * (9 / pi)"
    using ‹r_small = 9 / pi› by simp
  also have "... = 4"
    by (simp add: field_simps)
  finally have "arc_length = 4" .
  moreover have "arc_angle_deg = 80" 
    unfolding arc_angle_deg_def by simp
  ultimately show ?thesis by auto
qed