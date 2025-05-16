theory GeometryProblem
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)² + (snd p - snd q)²)"
definition det2 :: "point ⇒ point ⇒ real" where
  "det2 u v = fst u * snd v - snd u * fst v"
definition vec :: "point ⇒ point ⇒ point" where
  "vec p q = (fst q - fst p, snd q - snd p)"
definition dot :: "point ⇒ point ⇒ real" where
  "dot u v = fst u * fst v + snd u * snd v"
definition norm :: "point ⇒ real" where
  "norm v = sqrt(dot v v)"
definition vadd :: "point ⇒ point ⇒ point" where
  "vadd u v = (fst u + fst v, snd u + snd v)"
definition smult :: "real ⇒ point ⇒ point" where
  "smult a v = (a * fst v, a * snd v)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = ((fst p + fst q)/2, (snd p + snd q)/2)"
definition colinear :: "point ⇒ point ⇒ bool" where
  "colinear u v = (∃r. u = smult r v)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle P Q R = 
    (let u = vec Q P; v = vec Q R in
     acos (dot u v / (norm u * norm v)))"
lemma geometry_circle_tangent_angle:
  fixes A B C D E F G O :: point
  assumes 
    "midpoint O A B"
    "A ≠ B"
    "dist O C = dist O A"
    "dist O D = dist O A"
    "0 < det2 (vec A B) (vec A C)"
    "0 < det2 (vec A B) (vec A D)"
    "colinear (vec C E) (vec O C)"
    "colinear (vec D E) (vec O D)"
    "∃l1 l2. F = vadd B (smult l1 (vec B C)) ∧ F = vadd A (smult l2 (vec A D))"
    "∃l. l ≠ 0 ∧ G = vadd B (smult l (vec A B)) ∧ dist O G = dist O A ∧ G ≠ B"
  shows "angle C E F = 2 * angle A G F"
sorry