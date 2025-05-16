theory AngleProblem
imports 
  Complex_Main
  "HOL-Analysis.Topology_Euclidean_Space"
begin
type_synonym point = "real × real"
definition collinear :: "point set ⇒ bool" where
  "collinear S = (∃a b. ∀p∈S. ∃t. p = a + t *\<^sub>R (b - a))"
definition bet :: "point ⇒ point ⇒ point ⇒ bool" where
  "bet A B C = (collinear {A, B, C} ∧ (∃t. 0 < t ∧ t < 1 ∧ B = A + t *\<^sub>R (C - A)))"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = (let
    u = (fst A - fst B, snd A - snd B);
    v = (fst C - fst B, snd C - snd B);
    cos_theta = (fst u * fst v + snd u * snd v) / 
               (sqrt (fst u * fst u + snd u * snd u) * sqrt (fst v * fst v + snd v * snd v))
   in
    if cos_theta > 1 then 0
    else if cos_theta < -1 then 180
    else acos cos_theta * (180 / pi))"
lemma angle_computation:
  fixes A B C D E F G :: point
  assumes "angle B G E = 75"
  assumes "angle F C G = 100"
  assumes "collinear {A, C, G, E}"
  assumes "collinear {B, G, D}"
  assumes "bet A C G"
  assumes "bet C G E"
  shows "angle E G D = 105"
  sorry