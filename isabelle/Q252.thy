theory Cylinder_Problem_Formalization
  imports Complex_Main 
begin
definition cylinder_diameter :: real where
  "cylinder_diameter = 79.0" 
definition cylinder_radius :: real where
  "cylinder_radius = cylinder_diameter / 2.0" 
definition given_surface_area :: real where
  "given_surface_area = 54105.0" 
definition cylinder_surface_area_formula :: "real => real => real" 
  where "cylinder_surface_area_formula r h = 2 * pi * r^2 + 2 * pi * r * h"
lemma cylinder_height_assertion:
  "EX h :: real.
     h > 0.0
     AND given_surface_area = cylinder_surface_area_formula cylinder_radius h
     AND Real.rint h = 30.0"
end