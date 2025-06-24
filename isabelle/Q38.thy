theory Geometry_Problem_Definition
  imports Main "HOL-Analysis.Sqrt" 
begin
definition s1 :: real where
  "s1 = 3.0" 
definition s2 :: real where
  "s2 = 12.0" 
definition z_squared :: real where
  "z_squared = s2 * (s1 + s2)"
definition z_geom :: real where
  "z_geom = sqrt z_squared"
theorem prove_z_is_6_sqrt_5:
  "z_geom = 6.0 * sqrt 5.0"
  oops
end