theory TriangleAngles
imports Main HOL.Real
begin
type_synonym point = "real × real"
definition vector :: "point ⇒ point ⇒ real × real" where
  "vector A B = (fst B - fst A, snd B - snd A)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v w = fst v * fst w + snd v * snd w"
definition norm :: "real × real ⇒ real" where
  "norm v = sqrt(dot_product v v)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    (let vBA = vector B A; vBC = vector B C in
    arccos(dot_product vBA vBC / (norm vBA * norm vBC)))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / pi"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg A B C = rad_to_deg(angle A B C)"
definition distance :: "point ⇒ point ⇒ real" where
  "distance A B = norm(vector A B)"
definition is_isosceles :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_isosceles A B C = (distance A B = distance A C)"
theorem triangle_angle_calculation:
  fixes A B C D :: point
  assumes "is_isosceles B D C"     
  assumes "is_isosceles A C D"     
  assumes "angle_deg A B C = 70"   
  shows "angle_deg B A C = 35"     
  sorry                            