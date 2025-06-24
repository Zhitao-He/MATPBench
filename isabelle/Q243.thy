theory Cuboid_Diagonal_Calculation
imports
  "HOL-Analysis.Cartesian_Euclidean_Space"
begin
definition cuboid_length :: real where
  "cuboid_length = 15.0"
definition cuboid_width :: real where
  "cuboid_width = 11.0"
definition cuboid_height :: real where
  "cuboid_height = 11.0"
definition D_point :: "real^3" where
  "D_point = (0, 0, cuboid_height)"
definition F_point :: "real^3" where
  "F_point = (cuboid_length, cuboid_width, 0)"
definition y :: real where
  "y = dist D_point F_point"
end