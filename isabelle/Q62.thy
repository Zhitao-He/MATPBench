theory LogZeros
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition log2 :: "real ⇒ real" where
  "log2 x = ln x / ln 2"
theorem log2_num_zeros:
  "card {x::real. x > 0 ∧ log2 x = 0} = 1"
proof -
  have "log2 1 = 0"
    unfolding log2_def by (simp add: ln_1)
  moreover
  have "⋀x::real. x > 0 ⟹ log2 x = 0 ⟹ x = 1"
  proof -
    fix x::real
    assume "x > 0" and "log2 x = 0"
    then have "ln x = 0"
      unfolding log2_def
      using ln_gt_zero[of 2] by (auto simp: field_simps)
    then have "x = 1"
      using ln_eq_zero_iff by auto
    show "x = 1" by fact
  qed
  ultimately have "{x::real. x > 0 ∧ log2 x = 0} = {1::real}"
    by auto
  thus ?thesis by simp
qed