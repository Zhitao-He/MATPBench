theory HarmonicPotential
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem harmonic_potential_not_larger_at_zero:
  fixes k E :: real
  assumes "k > 0" and "E > 0"
  shows "k * (0::real)^2 / 2 ≤ E"
proof -
  have "k * (0::real)^2 / 2 = 0"
    by simp
  also have "... ≤ E"
    using assms(2) by simp
  finally show ?thesis .
qed