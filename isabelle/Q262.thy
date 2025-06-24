theory Geometry_Problem
imports Main "HOL-Analysis.Real_Sqrt" 
begin
type_synonym point3D = "real \<times> real \<times> real"
definition C :: point3D where "C = (0, 0, 0)"
definition B :: point3D where "B = (0, 0, 3)"
definition D :: point3D where "D = (10, 0, 0)"
definition A :: point3D where "A = (10, 0, 3)"
definition X :: point3D where "X = (5, 15, 0)"
definition E :: point3D where "E = (5 - 15/2, 15, 0)" 
definition F :: point3D where "F = (5 + 15/2, 15, 0)" 
definition vec_minus :: "point3D \<Rightarrow> point3D \<Rightarrow> point3D" where
  "vec_minus (x1, y1, z1) (x2, y2, z2) = (x1 - x2, y1 - y2, z1 - z2)"
definition dot_product :: "point3D \<Rightarrow> point3D \<Rightarrow> real" where
  "dot_product (x1, y1, z1) (x2, y2, z2) = x1*x2 + y1*y2 + z1*z2"
definition magnitude_sq :: "point3D \<Rightarrow> real" where
  "magnitude_sq p = dot_product p p"
definition magnitude :: "point3D \<Rightarrow> real" where
  "magnitude p = sqrt (magnitude_sq p)" 
definition vec_XC :: point3D where "vec_XC = vec_minus C X"
definition vec_XB :: point3D where "vec_XB = vec_minus B X"
definition cos_angle_BXC :: real where
  "cos_angle_BXC = (dot_product vec_XC vec_XB) / (magnitude vec_XC * magnitude vec_XB)"
end