theory Geometry_Problem
imports
  "HOL-Analysis.Cartesian_Euclidean_Space" 
  "HOL-Analysis.Angle"                   
begin
context
  fixes O :: "real^2" 
  fixes A :: "real^2" 
  fixes B :: "real^2" 
  fixes C :: "real^2" 
  fixes r :: real      
  assumes radius_definition: "r = 2"
  assumes A_is_on_circle: "dist O A = r"
  assumes B_is_on_circle: "dist O B = r"
  assumes C_is_on_circle: "dist O C = r"
  assumes angle_ACB_is_30_deg: "angle A C B = pi / 6" 
begin
lemma chord_AB_length_to_prove:
  "dist A B = 2"
oops 
end 
end 