theory AreaOfParallelogram
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition area_parallelogram :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_parallelogram A B C S = 
    let base = distance B C;
        height = distance S D
    in base * height"
lemma parallelogram_ACBS:
  fixes A B C S D :: point
  assumes "CB = 40"           
  and "ACBS 是平行四边形"  
  shows "area_parallelogram A C B S = 1520"
  