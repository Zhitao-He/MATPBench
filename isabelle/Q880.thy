theory AngleProblem 
imports Main HOL.Real "HOL-Analysis.Euclidean_Space" 
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    (let 
      vec1 = (fst A - fst B, snd A - snd B);
      vec2 = (fst C - fst B, snd C - snd B);
      dot_product = fst vec1 * fst vec2 + snd vec1 * snd vec2;
      len1 = sqrt((fst vec1)^2 + (snd vec1)^2);
      len2 = sqrt((fst vec2)^2 + (snd vec2)^2)
    in
      arccos (dot_product / (len1 * len2)) * (180 / pi))"
lemma solving_angle:
  fixes A B C D :: point
  assumes "distance A C = distance C B"    