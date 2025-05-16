theory AngleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
text ‹在图中，已知 $\sin \angle RPQ = \frac{7}{25}$ 且 $\cos \angle RPS = -\frac{24}{25}$›
type_synonym point = "real × real"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    (let v1 = (fst A - fst B, snd A - snd B);
         v2 = (fst C - fst B, snd C - snd B);
         dot = fst v1 * fst v2 + snd v1 * snd v2;
         norm1 = sqrt((fst v1)^2 + (snd v1)^2);
         norm2 = sqrt((fst v2)^2 + (snd v2)^2)
     in acos (dot / (norm1 * norm2)))"
definition sin_angle :: "point ⇒ point ⇒ point ⇒ real" where
  "sin_angle A B C = sin (angle A B C)"
definition cos_angle :: "point ⇒ point ⇒ point ⇒ real" where
  "cos_angle A B C = cos (angle A B C)"
theorem angle_problem:
  fixes R P Q S :: point
  assumes "sin_angle R P Q = 7/25"
  shows "cos_angle R P S = -24/25"
  