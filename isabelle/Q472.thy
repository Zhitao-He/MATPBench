theory Marble_in_Cone
  imports Complex_Main
begin
definition marble_radius :: real where
  "marble_radius = 15"
definition triangle_side :: real where
  "triangle_side = 2 * sqrt 3 * marble_radius"
definition triangle_height :: real where
  "triangle_height = (sqrt 3 / 2) * triangle_side"
definition hole_depth :: real where
  "hole_depth = triangle_height"
end