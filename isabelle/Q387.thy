theory Aluminum_Container
imports Main Complex_Main "HOL-Analysis.Analysis"
begin
lemma aluminum_container_cost:
  fixes l w h cost_per_sq_in :: real
  assumes "l = 10" "w = 10" "h = 12" "cost_per_sq_in = 0.05"
  defines "surface_area ≡ 2 * (l * w + l * h + w * h)"
  defines "total_cost ≡ cost_per_sq_in * surface_area"
  shows "total_cost = 34"
proof -
  have "surface_area = 2 * (l * w + l * h + w * h)" by (simp add: surface_area_def)
  also have "... = 2 * (10 * 10 + 10 * 12 + 10 * 12)" 
    using assms(1) assms(2) assms(3) by simp
  also have "... = 2 * (100 + 120 + 120)" by simp
  also have "... = 2 * 340" by simp
  also have "... = 680" by simp
  finally have "surface_area = 680" .
  have "total_cost = cost_per_sq_in * surface_area" by (simp add: total_cost_def)
  also have "... = 0.05 * 680" using assms(4) `surface_area = 680` by simp
  also have "... = 34" by simp
  finally show "total_cost = 34" .
qed