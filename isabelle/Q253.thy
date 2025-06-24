theory Hollow_Cylinder_Surface_Area
imports Complex_Main 
begin
definition R_outer :: real where
  "R_outer = 11.0"
definition r_inner :: real where
  "r_inner = 10.0"
definition h_cylinder :: real where
  "h_cylinder = 24.0"
definition total_surface_area_hollow_cylinder :: "real => real => real => real" where
  "total_surface_area_hollow_cylinder R r h =
    (2 * pi * R * h) +      
    (2 * pi * r * h) +      
    (2 * pi * (R*R - r*r))" 
definition SA :: real where
  "SA = total_surface_area_hollow_cylinder R_outer r_inner h_cylinder"
end