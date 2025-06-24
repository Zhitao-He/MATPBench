theory GeometryProblem
  imports "HOL-Analysis.Real" "HOL-Analysis.Transcendental"
begin
typedecl point
consts
  A :: point 
  B :: point 
  C :: point 
  H :: point 
  J :: point 
  K :: point 
  x :: real  
  length_of_line :: "point => point => real" 
axiomatization where
  x_is_positive: "x > 0" and
  radius_H_HC: "length_of_line H C = x" and
  radius_H_HA: "length_of_line H A = x" and 
  radius_J_JC: "length_of_line C J = 2 * x" and
  radius_K_KA: "length_of_line K A = 4 * x"
definition circumference :: "real => real" where
  "circumference r = 2 * pi * r"
axiomatization where
  sum_of_circumferences_condition:
    "circumference (length_of_line K A) +    
     circumference (length_of_line C J) +    
     circumference (length_of_line H C)      
     = 42 * pi" and
  KB_is_radius_of_Circle_K: "length_of_line K B = length_of_line K A" and
  JB_is_radius_of_Circle_J: "length_of_line J B = length_of_line C J" and
  KBJ_collinear_tangency_KJ_length:
    "length_of_line K J = length_of_line K B + length_of_line J B" and
  KAH_collinear_tangency_KH_length:
    "length_of_line K H = length_of_line K A + length_of_line H A" and
  HCJ_collinear_tangency_HJ_length:
    "length_of_line H J = length_of_line H C + length_of_line C J"
end