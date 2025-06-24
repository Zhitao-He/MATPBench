theory Spherical_Ball_Surface_Area
  imports 
    "HOL-Analysis.Complex_Main" 
    "HOL-Analysis.Floor_Ceil"   
begin
definition D_sphere :: real where
  "D_sphere = 2.5"
definition R_sphere :: real where
  "R_sphere = D_sphere / 2.0"
definition SA_sphere_formula :: "real => real" where
  "SA_sphere_formula r = 4.0 * pi * (r * r)"
definition calculated_SA_ball :: real where
  "calculated_SA_ball = SA_sphere_formula R_sphere"
definition given_SA_value :: real where
  "given_SA_value = 785.0"
definition round_real_to_nearest_int :: "real => int" where
  "round_real_to_nearest_int x = floor (x + 0.5)"
definition round_to_one_decimal :: "real => real" where
  "round_to_one_decimal x = real_of_integer (round_real_to_nearest_int (x * 10.0)) / 10.0"
definition rounded_calculated_SA_ball :: real where
  "rounded_calculated_SA_ball = round_to_one_decimal calculated_SA_ball"
end