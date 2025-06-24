theory Solid_Surface_Area
  imports Main "HOL-Analysis.Analysis"
begin
definition cylinder_radius :: real where "cylinder_radius = 5.0"
definition cylinder_height :: real where "cylinder_height = 11.0"
definition prism_length :: real where "prism_length = 65.0"
definition prism_width :: real where "prism_width = 21.0"
definition prism_height :: real where "prism_height = 10.0"
definition area_circle :: "real => real"
  where "area_circle r = pi * r * r"
definition cylinder_lateral_surface_area :: "real => real => real"
  where "cylinder_lateral_surface_area r h = 2 * pi * r * h"
definition rectangular_prism_total_surface_area :: "real => real => real => real"
  where "rectangular_prism_total_surface_area l w h = 2 * (l * w + l * h + w * h)"
definition total_exposed_surface_area_of_solid :: real
  where "total_exposed_surface_area_of_solid =
           (rectangular_prism_total_surface_area prism_length prism_width prism_height) +
           (cylinder_lateral_surface_area cylinder_radius cylinder_height)"
definition exposed_surface_area_of_prism :: real
  where "exposed_surface_area_of_prism =
           (rectangular_prism_total_surface_area prism_length prism_width prism_height) -
           (area_circle cylinder_radius)"
end