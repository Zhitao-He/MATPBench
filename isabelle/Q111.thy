theory Cylinder_Cube_Displacement
  imports Complex_Main
begin
definition cylinder_radius :: real where
  "cylinder_radius = 4"
definition cylinder_height :: real where
  "cylinder_height = 10"
definition cube_side :: real where
  "cube_side = 8"
definition cube_diagonal :: real where
  "cube_diagonal = cube_side * sqrt 3"
definition cube_volume :: real where
  "cube_volume = cube_side ^ 3"
definition v_squared :: real where
  "v_squared = (cube_volume) ^ 2"
end