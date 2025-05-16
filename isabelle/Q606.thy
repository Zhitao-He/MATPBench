theory Parallelogram_Perimeter
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst q - fst p)² + (snd q - snd p)²)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product p q = (fst p * fst q) + (snd p * snd q)"
definition perpendicular :: "point ⇒ point ⇒ bool" where
  "perpendicular p q ⟷ dot_product p q = 0"
definition perimeter :: "point list ⇒ real" where
  "perimeter ps = (if length ps ≥ 2 
                  then sum_list (map (λi. distance (ps ! i) (ps ! ((i+1) mod length ps))) 
                                [0..<length ps])
                  else 0)"
definition quadrilateral_perimeter :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "quadrilateral_perimeter P Q R S = distance P Q + distance Q R + distance R S + distance S P"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = (let 
    v1 = (fst A - fst B, snd A - snd B);
    v2 = (fst C - fst B, snd C - snd B);
    cos_angle = dot_product v1 v2 / (sqrt(dot_product v1 v1) * sqrt(dot_product v2 v2))
    in arccos cos_angle)"
definition is_parallelogram :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_parallelogram A B C D ⟷ 
    (fst B - fst A = fst C - fst D) ∧ (snd B - snd A = snd C - snd D) ∧
    (fst C - fst B = fst D - fst A) ∧ (snd C - snd B = snd D - snd A)"
lemma compute_perimeter:
  fixes A B C D E :: point
  assumes "distance A B = 36"
    and "distance A D = 22"
    and "angle C B E = pi/6" 
    and "is_parallelogram B C D A"
    and "perpendicular (fst C - fst E, snd C - snd E) (fst B - fst E, snd B - snd E)"
  shows "quadrilateral_perimeter B C D A = 116"
  by auto 