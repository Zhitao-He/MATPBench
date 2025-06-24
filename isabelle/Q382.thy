theory Half_Cylinder_Surface_Area
  imports Complex_Main
begin
definition radius :: real where "radius = 6"
definition height :: real where "height = 10"
definition half_cylinder_surface_area :: real where
  "half_cylinder_surface_area =
    (  (1/2) * pi * radius^2
    +  (1/2) * pi * radius^2
    +  pi * radius * height
    +  radius * height
    +  radius * height )"
lemma half_cylinder_surface_area_value:
  "half_cylinder_surface_area = 96 * pi + 120"
proof -
  have "half_cylinder_surface_area =
    ( (1/2) * pi * 6^2
    + (1/2) * pi * 6^2
    + pi * 6 * 10
    + 6 * 10
    + 6 * 10 )"
    unfolding half_cylinder_surface_area_def radius_def height_def by simp
  also have "... = ( (1/2)*pi*36 + (1/2)*pi*36 + 60*pi + 60 + 60 )"
    by simp
  also have "... = (18*pi + 18*pi + 60*pi + 120)"
    by simp
  also have "... = (36*pi + 60*pi + 120)"
    by simp
  also have "... = (96*pi + 120)"
    by simp
  finally show ?thesis .
qed
end