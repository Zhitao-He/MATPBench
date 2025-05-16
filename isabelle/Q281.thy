theory CircleRings
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition area_of_ring :: "real ⇒ real ⇒ real" where
  "area_of_ring r1 r2 = pi * (r2^2 - r1^2)"
theorem shaded_ring_ratio:
  "area_of_ring 1 2 / area_of_ring 3 4 = 7"
  unfolding area_of_ring_def
  by (simp add: divide_simps power2_eq_square)