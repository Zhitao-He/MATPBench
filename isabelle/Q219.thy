theory TowerHeight
imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma height_of_tower_problem:
  fixes d :: real
  assumes "d = 29"
  shows "∃h::real. 
    let θ₁ = (10 * pi) / 180;
        θ₂ = (22 * pi) / 180
    in h = d * (tan θ₂ * tan θ₁) / (tan θ₂ - tan θ₁) ∧
       round h = 9"
proof -
  let ?θ₁ = "(10 * pi) / 180"
  let ?θ₂ = "(22 * pi) / 180"
  let ?h = "d * (tan ?θ₂ * tan ?θ₁) / (tan ?θ₂ - tan ?θ₁)"
  have "tan ?θ₂ - tan ?θ₁ > 0"
    by (simp add: tan_def sin_gt_zero cos_gt_zero)
  have "?h = d * (tan ?θ₂ * tan ?θ₁) / (tan ?θ₂ - tan ?θ₁)"
    by simp
  have "?h ≈ 9"
    using assms
    by (simp add: Let_def)
  from this have "round ?h = 9"
    by simp
  thus ?thesis
    using assms
    by (auto simp: Let_def)
qed