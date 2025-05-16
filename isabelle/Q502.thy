theory TriangleAngle
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin
theorem triangle_angle_SRT:
  fixes R S T :: "real × real"
  assumes "dist R S = 5"
  assumes "dist T R = 6"
  assumes "dist T S = 3"
  defines "x ≡ (angle S R T) * (180 / pi)"
  shows "x = 180 * (arccos (13/15)) / pi"
proof -
  have "cos (angle S R T) = (dist R S^2 + dist T R^2 - dist T S^2) / (2 * dist R S * dist T R)"
    by (simp add: law_of_cosines)
  also have "... = (5^2 + 6^2 - 3^2) / (2 * 5 * 6)"
    using assms(1-3) by auto
  also have "... = (25 + 36 - 9) / 60"
    by simp
  also have "... = 52 / 60"
    by simp
  also have "... = 13 / 15"
    by simp
  finally have "cos (angle S R T) = 13 / 15" .
  hence "angle S R T = arccos (13 / 15)"
    by (simp add: arccos_cos)
  hence "x = 180 * arccos (13 / 15) / pi"
    unfolding x_def by simp
  thus ?thesis .
qed