theory ParallelogramProblem
imports Main Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real^2" where
  "vec A B = ((fst B - fst A), (snd B - snd A))"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B)/2, (snd A + snd B)/2)"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment A B P ⟷ (∃t. 0 ≤ t ∧ t ≤ 1 ∧ P = ((1-t)*fst A + t*fst B, (1-t)*snd A + t*snd B))"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line A B P ⟷ (∃t. P = ((1-t)*fst A + t*fst B, (1-t)*snd A + t*snd B))"
definition intersection :: "point ⇒ point ⇒ point ⇒ point ⇒ point option" where
  "intersection A B C D = 
    (let a1 = snd B - snd A;
         b1 = fst A - fst B;
         c1 = a1 * fst A + b1 * snd A;
         a2 = snd D - snd C;
         b2 = fst C - fst D;
         c2 = a2 * fst C + b2 * snd C;
         det = a1 * b2 - a2 * b1
     in if det = 0 then None
        else Some ((b2 * c1 - b1 * c2) / det, (a1 * c2 - a2 * c1) / det))"
definition is_parallelogram :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_parallelogram A B C D ⟷ vec A B = vec D C ∧ vec A D = vec B C"
definition distance :: "point ⇒ point ⇒ real" where
  "distance A B = sqrt((fst B - fst A)^2 + (snd B - snd A)^2)"
lemma parallelogram_problem:
  fixes A B C D M N P Q :: point
  assumes "is_parallelogram A B C D"
    and "M = midpoint A B"
    and "N = midpoint B C"
    and "on_line D M P" "on_line A C P"  
    and "on_line D N Q" "on_line A C Q"  
    and "distance A C = 15"
    and "distance Q A = 10"
  shows "distance P C = 10"  