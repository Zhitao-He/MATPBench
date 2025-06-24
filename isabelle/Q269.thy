theory Triangular_Prism_Surface_Area
imports Main
begin
definition height_of_isosceles_triangle :: "real ⇒ real ⇒ real" where
  "height_of_isosceles_triangle base side = sqrt (side^2 - (base / 2)^2)"
definition area_of_triangle :: "real ⇒ real ⇒ real" where
  "area_of_triangle base height = (base * height) / 2"
definition perimeter_of_isosceles_triangle :: "real ⇒ real ⇒ real" where
  "perimeter_of_isosceles_triangle base side = base + 2 * side"
definition total_surface_area_isosceles_prism :: "real ⇒ real ⇒ real ⇒ real" where
  "total_surface_area_isosceles_prism base_tri side_tri prism_h =
    let
      h_tri = height_of_isosceles_triangle base_tri side_tri;
      area_base = area_of_triangle base_tri h_tri;
      perimeter_base = perimeter_of_isosceles_triangle base_tri side_tri
    in (2 * area_base) + (perimeter_base * prism_h)"
definition triangle_base_dimension :: real where "triangle_base_dimension = 12.0"
definition triangle_side_dimension :: real where "triangle_side_dimension = 10.0"
definition prism_height_dimension :: real where "prism_height_dimension = 16.0"
definition given_total_surface_area :: real where "given_total_surface_area = 608.0"
theorem problem_statement:
  "total_surface_area_isosceles_prism triangle_base_dimension triangle_side_dimension prism_height_dimension = given_total_surface_area"
end