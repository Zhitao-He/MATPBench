theory GeometryProblem
  imports Complex_Main "HOL-Library.Product_Type"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ point" where
  "vec A B = (fst B - fst A, snd B - snd A)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product u v = fst u * fst v + snd u * snd v"
definition norm_sq :: "point ⇒ real" where
  "norm_sq v = dot_product v v"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt (norm_sq (vec A B))"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B) / (2::real), (snd A + snd B) / (2::real))"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle P Q R = (0.5::real) * abs(fst P * (snd Q - snd R) + fst Q * (snd R - snd P) + fst R * (snd P - snd Q))"
locale RightTriangleProblem =
  fixes A B C :: point
  assumes right_angle_at_A: "dot_product (vec A B) (vec A C) = 0"
  assumes length_AB: "dist A B = (15::real)"
  assumes length_AC: "dist A C = (24::real)"
begin
definition D :: point where "D = midpoint A C"
definition E :: point where "E = midpoint A B"
definition F :: point where "F = midpoint B C"
lemma area_DEF_is_claimed_value:
  "area_triangle D E F = (45::real)^(2::nat)"
end
end