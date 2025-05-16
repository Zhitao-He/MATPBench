theory RightPyramid
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point3 = "real × real × real"
definition dist3 :: "point3 ⇒ point3 ⇒ real" where
  "dist3 p q = sqrt((fst p - fst q)^2 + (fst (snd p) - fst (snd q))^2 + (snd (snd p) - snd (snd q))^2)"
definition vec3 :: "point3 ⇒ point3 ⇒ real × real × real" where
  "vec3 p q = (fst p - fst q, fst (snd p) - fst (snd q), snd (snd p) - snd (snd q))"
definition dot_product :: "real × real × real ⇒ real × real × real ⇒ real" where
  "dot_product u v = fst u * fst v + fst (snd u) * fst (snd v) + snd (snd u) * snd (snd v)"
definition norm :: "real × real × real ⇒ real" where
  "norm v = sqrt(fst v^2 + fst (snd v)^2 + snd (snd v)^2)"
definition angle_rad :: "point3 ⇒ point3 ⇒ point3 ⇒ real" where
  "angle_rad A B C = 
    (let u = vec3 A B; v = vec3 C B in
     acos (dot_product u v / (norm u * norm v)))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / π"
definition angle_deg :: "point3 ⇒ point3 ⇒ point3 ⇒ real" where
  "angle_deg A B C = rad_to_deg (angle_rad A B C)"
theorem right_pyramid_angle:
  fixes A B C D E :: point3
  assumes "A = (0, 0, 0)" "B = (1, 0, 0)" "C = (1, 1, 0)" "D = (0, 1, 0)" "E = (0.5, 0.5, h)"
    and "dist3 E A = dist3 E B" "dist3 E B = dist3 E C" "dist3 E C = dist3 E D" "dist3 E D = dist3 E A"
    and "dist3 A B = dist3 B C" "dist3 C D = dist3 D A" "dist3 A B = dist3 C D"
    and "dist3 E A = dist3 A B"
  shows "angle_deg A B D = 45"