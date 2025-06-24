theory Triangular_Prism_Surface_Area
imports Main
begin
definition triangle_base_length :: real where
  "triangle_base_length = 12.0"
definition triangle_height :: real where
  "triangle_height = 8.0"
definition triangle_slanted_side :: real where 
  "triangle_slanted_side = 10.0"
definition prism_length_val :: real where 
  "prism_length_val = 21.0"
definition calculate_area_triangle :: "real => real => real" where
  "calculate_area_triangle base height = (1.0/2.0) * base * height"
definition calculate_area_rectangle :: "real => real => real" where
  "calculate_area_rectangle side1 side2 = side1 * side2"
definition total_surface_area :: real where
  "total_surface_area =
    (2.0 * calculate_area_triangle triangle_base_length triangle_height) + 
    (calculate_area_rectangle prism_length_val triangle_base_length) +    
    (2.0 * calculate_area_rectangle prism_length_val triangle_slanted_side)" 
lemma statement_surface_area_is_768:
  "total_surface_area = 768.0"
  oops 
end