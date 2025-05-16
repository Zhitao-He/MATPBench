theory AngleProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)² + (snd p - snd q)²)"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - snd p)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v w = fst v * fst w + snd v * snd w"
definition vec_norm :: "real × real ⇒ real" where
  "vec_norm v = sqrt(fst v² + snd v²)"
definition angle_rad :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_rad A O B = (
    let vA = vec O A;
        vB = vec O B;
        dot = dot_product vA vB;
        nA = vec_norm vA;
        nB = vec_norm vB
    in acos(dot / (nA * nB))
  )"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / pi"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg A O B = rad_to_deg(angle_rad A O B)"
lemma angle_RQM:
  fixes M N P Q R :: point
  assumes "distance M N = 3*x - 4"
  and "distance N Q = 15.4"
  and "distance P N = 2*y + 5"
  and "distance P Q = 11.1"
  and "distance R M = 17.9"
  and "distance R P = 20"
  and "distance R Q = 3*z - 3"
  and "angle_deg M R Q = 38"
  and "angle_deg N Q P = 83"
  and "angle_deg Q N M = 33"
  and "vec M R = vec N P" 
  shows "angle_deg R Q M = 83"