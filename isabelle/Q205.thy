theory SectorArea
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem sector_area_240pi:
  fixes r :: real
  assumes "r = 24"
  shows "∃θ. 0 < θ ∧ θ < 2 * pi ∧ (240 * pi) = (1/2) * r^2 * θ"
proof -
  let ?sector_area = "240 * pi"
  from assms have "r = 24" by simp
  have "?sector_area = (1/2) * r^2 * (20/24)" 
    by (simp add: assms algebra_simps)
  moreover have "0 < (20/24)" by simp
  moreover have "(20/24) < 2 * pi" 
    by (simp add: pi_gt_zero)
  ultimately show ?thesis
    by (rule_tac x="20/24" in exI, auto)
qed