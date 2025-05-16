theory WaterLevel
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem water_level_rise_approximation:
  fixes L W H r h x :: real
  assumes "L = 6" "W = 5" "H = 4" "r = 3"
          "h > 0" "x > 0"
          "L * W * H = pi * r^2 * x"
  shows "|x - 42| < |x - 3| ∧ |x - 42| < |x - 34| ∧ |x - 42| < |x - 38|"
begin
  from assms(1-4,7) have "6 * 5 * 4 = pi * 3^2 * x" by simp
  hence "120 = pi * 9 * x" by simp
  hence "120 = 9 * pi * x" by (simp add: mult.commute mult.left_commute)
  hence "120/(9 * pi) = x" by (simp add: field_simps)
  hence "40/(3 * pi) = x" by simp
  have "x ≈ 42.44" 
    using `40/(3 * pi) = x`
    by (approximation 10)
  have "|x - 42| < |x - 3|" 
    using `40/(3 * pi) = x`
    by (approximation 10)
  moreover have "|x - 42| < |x - 34|" 
    using `40/(3 * pi) = x`
    by (approximation 10)
  moreover have "|x - 42| < |x - 38|" 
    using `40/(3 * pi) = x`
    by (approximation 10)
  ultimately show ?thesis by blast