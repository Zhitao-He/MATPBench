theory R2_is_larger
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition "R1 = integral {-pi..0} (λx. sin x - cos x)"
definition "R2 = integral {0..pi} (λx. sin x - cos x)"
theorem region_R2_larger: "R2 > R1"
  sorry