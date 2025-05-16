theory SemicirclesShaded
imports Main HOL.Real
begin
definition pi_approx :: "real" where "pi_approx = 3.14"
definition radius1 :: "real" where "radius1 = 2"
definition radius2 :: "real" where "radius2 = 4"
definition radius3 :: "real" where "radius3 = 6"
definition radius4 :: "real" where "radius4 = 8"
definition semicircle_area :: "real ⇒ real" where
  "semicircle_area r = (1/2) * pi_approx * (r * r)"
definition shaded_area :: "real" where
  "shaded_area = (semicircle_area radius4 - semicircle_area radius3) +
                (semicircle_area radius2 - semicircle_area radius1)"
theorem shaded_area_value: "abs (shaded_area - 62.8) < 0.05"
  unfolding shaded_area_def semicircle_area_def radius1_def radius2_def radius3_def radius4_def pi_approx_def
  by (simp add: algebra_simps)