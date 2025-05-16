theory CircleMaxY
  imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem circle_max_y_value:
  fixes x y :: real
  assumes "x^2 + y^2 = 25"
  shows "y ≤ 5"
proof -
  have "y^2 ≤ 25" 
  proof -
    from assms have "y^2 ≤ x^2 + y^2" 
      by simp
    also have "... = 25" 
      using assms by simp
    finally show "y^2 ≤ 25" .
  qed
  hence "y ≤ 5 ∨ y ≥ -5" 
    by (metis power2_le_imp_le)
  moreover from assms have "y^2 = 25 ⟹ x^2 = 0" by auto
  hence "y^2 = 25 ⟹ x = 0" by auto
  hence "(x,y) = (0,5) ∨ (x,y) = (0,-5) ⟹ y^2 = 25" by auto
  ultimately show "y ≤ 5" 
    by (metis dual_order.strict_trans2 le_less less_eq_real_def not_less power2_less_imp_less real_le_lteq)
qed