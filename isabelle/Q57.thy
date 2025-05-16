theory ImproperIntegralDiverges
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin
theorem improper_integral_diverges_099:
  "(\<integral>\<^sup>+ x=1..+\<infinity>. 1 / (x ^ 0.99)) = +\<infinity>"
proof -
  have "(\<integral>\<^sup>+ x=1..+\<infinity>. 1 / (x ^ 0.99)) = (\<integral>\<^sup>+ x=1..+\<infinity>. x powr (-0.99))"
    by (simp add: powr_minus field_simps)
  also have "... = +\<infinity>"
  proof -
    have "(-0.99) > -1" by simp
    then show ?thesis
      by (simp add: PInfty_eq_ln_powr_gt_minus1)
  qed
  finally show ?thesis .
qed