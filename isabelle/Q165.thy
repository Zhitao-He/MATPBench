theory Problem_Geometry_Secant
  imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between A M B ≡ dist A M + dist M B = dist A B"
consts
  O :: point  
  L :: point  
  G :: point  
  E :: point  
  S :: point  
  x :: real   
axiomatization where
  x_is_positive: "x > 0" and
  G_on_circle: "dist G O = x" and
  E_on_circle: "dist E O = x" and
  S_on_circle: "dist S O = x" and
  LG_length: "dist L G = 3" and
  LE_length: "dist L E = 4" and
  ES_length: "dist E S = 9" and
  G_is_between_L_O: "between L G O" and
  E_is_between_L_S: "between L E S"
end