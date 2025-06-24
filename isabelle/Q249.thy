theory Solid_Volume_Calculation
imports Complex_Main 
begin
definition R_large :: real where
  "R_large = 6.0"
definition r_small :: real where
  "r_small = 3.0"
definition volume_hemisphere :: "real => real" where
  "volume_hemisphere r = (2.0/3.0) * pi * (r ^ (3::nat))"
definition V_large_hemisphere :: real where
  "V_large_hemisphere = volume_hemisphere R_large"
definition V_small_hemisphere :: real where
  "V_small_hemisphere = volume_hemisphere r_small"
definition V_total :: real where
  "V_total = V_large_hemisphere + V_small_hemisphere"
end