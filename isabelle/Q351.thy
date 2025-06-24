theory Rectangle_Trisect_Perimeter
  imports Complex_Main
begin
locale rectangle_ABCD =
  fixes a :: real
  assumes a_pos: "a > 0"
begin
definition "A = (0::real, 1::real)"
definition "B = (a, 1)"
definition "C = (a, 0)"
definition "D = (0, 0)"
fixes x :: real
assumes x_range: "0 < x" "x < a"
definition "P = (x, 1)"
definition "vec_DB = (a,1)"
definition "vec_DC = (a,0)"
definition "vec_DP = (x,1)"
definition "dot_DB_DC = a*a + 1*0"
definition "norm_DB = sqrt (a^2 + 1^2)"
definition "norm_DC = sqrt (a^2 + 0^2)"
definition "cos_theta_DB_DC = dot_DB_DC / (norm_DB * norm_DC)"
definition "dot_DP_DC = x*a + 1*0"
definition "norm_DP = sqrt (x^2 + 1^2)"
definition "cos_theta_DP_DC = dot_DP_DC / (norm_DP * norm_DC)"
definition "trisect_condition =
  (cos_theta_DB_DC = sqrt 3 / 2 ∧ cos_theta_DP_DC = 1/2)"
definition "dist p q = sqrt ((fst p - fst q)^2 + (snd p - snd q)^2)"
definition "perimeter_BDP = dist B D + dist D P + dist P B"
end
end