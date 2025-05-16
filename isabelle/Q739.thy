theory CosABCValue
  imports Complex_Main HOL.Real "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear A B C = (∃r. C - A = r *R (B - A))"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = abs (det (mat 2 2 (λ(i,j). if i=0 ∧ j=0 then fst B - fst A
                                          else if i=0 ∧ j=1 then fst C - fst A
                                          else if i=1 ∧ j=0 then snd B - snd A
                                          else snd C - snd A))) / 2"
definition distance :: "point ⇒ point ⇒ real" where
  "distance A B = sqrt ((fst B - fst A)^2 + (snd B - snd A)^2)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    let v1 = (fst A - fst B, snd A - snd B);
        v2 = (fst C - fst B, snd C - snd B) in
    acos ((fst v1 * fst v2 + snd v1 * snd v2) / 
          (sqrt (fst v1^2 + snd v1^2) * sqrt (fst v2^2 + snd v2^2)))"
lemma "¬colinear A B C ⟹ 
       distance B C = 14 ⟹ 
       distance A C = 48 ⟹ 
       distance A B = 50 ⟹ 
       angle B C A = pi/2 ⟹ 
       cos (angle A B C) = 7/25"
  by (simp add: angle_def distance_def)
  (* Proof could be completed using the law of cosines *)