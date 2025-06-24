theory Geometry_Problem_2024_06_Example
  imports Complex_Main
begin
locale geometry_problem =
  fixes A B C D E F :: "complex"
  assumes
    "dist B C = 4"
    "dist B F = x"
    "angle B A D = (pi / 6)"    
    "angle C B E = (pi / 6)"    
    "angle D B F = (pi / 6)"    
    "angle E B A = (pi / 6)"    
    "is_perpendicular (A - B) (E - A)"   
    "is_perpendicular (D - B) (A - D)"   
    "is_perpendicular (B - E) (C - E)"   
    "is_perpendicular (B - F) (D - F)"   
begin
definition value_x :: real where
  "value_x = x"
end
end