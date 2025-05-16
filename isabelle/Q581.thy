theory ArcRMQ
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition angle :: "point → point → point → real" where
  "angle A B C = 
    let
      v1 = (fst A - fst B, snd A - snd B);
      v2 = (fst C - fst B, snd C - snd B);
      dot_product = fst v1 * fst v2 + snd v1 * snd v2;
      norm_v1 = sqrt((fst v1)^2 + (snd v1)^2);
      norm_v2 = sqrt((fst v2)^2 + (snd v2)^2)
    in
      acos (dot_product / (norm_v1 * norm_v2)) * (180 / pi)"
definition arc_measure :: "point → point → point → real" where
  "arc_measure Center P Q = 
    if angle P Center Q > 180 then 360 - angle P Center Q
    else angle P Center Q"
lemma arc_rmq_measure:
  assumes "∠PRQ = 115" 
  and "R是圆心" 
  and "NR ⊥ PR" 
  shows "arc_measure R R M Q = 65" 
proof -
  show "arc_measure R R M Q = 65" 
    by (simp add: arc_measure_def) 
qed