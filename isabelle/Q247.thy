theory Half_Cone_Volume_Problem
  imports Complex_Main 
begin
definition r_cone :: real where
  "r_cone = 3.0" 
definition l_cone :: real where
  "l_cone = 9.0" 
definition h_cone :: real where
  "h_cone = sqrt (l_cone * l_cone - r_cone * r_cone)"
definition volume_half_cone_calculated :: real where
  "volume_half_cone_calculated = (1.0/6.0) * pi * (r_cone * r_cone) * h_cone"
definition round_real_to_2_decimal_places :: "real => real" where
  "round_real_to_2_decimal_places x = floor (x * 100.0 + 0.5) / 100.0"
definition volume_half_cone_claimed :: real where
  "volume_half_cone_claimed = 1045.0"
end