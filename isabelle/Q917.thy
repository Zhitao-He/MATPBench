theory MNG_angle_theorem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    (let 
      a = distance B C;
      b = distance A C;
      c = distance A B
    in
      arccos((b^2 + c^2 - a^2) / (2 * b * c)) * (180 / pi))"
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle p center = (∃r. distance p center = r)"
theorem measure_angle_MNG:
  fixes M N G P :: point
  assumes "angle M P G = 89"
  assumes "P is center of circle containing M, N, G"
  shows "angle M N G = 89/2"
  sorry