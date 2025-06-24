theory Water_Trough_Surface_Area
  imports "HOL.Transcendental" 
begin
definition trough_radius :: real where
  "trough_radius = 0.92" 
definition trough_length :: real where
  "trough_length = 2.49" 
definition surface_area_formula :: "real => real => real" ("A_trough") where
  "A_trough r L = pi * r * L + pi * r * r"
definition calculated_surface_area_from_image :: real where
  "calculated_surface_area_from_image = A_trough trough_radius trough_length"
definition claimed_surface_area :: real where
  "claimed_surface_area = 986.00" 
end