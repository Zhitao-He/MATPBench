theory ArcLength
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p₁ p₂ = sqrt((fst p₂ - fst p₁)² + (snd p₂ - snd p₁)²)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A O B = 
    (let vA = (fst A - fst O, snd A - snd O);
         vB = (fst B - fst O, snd B - snd O);
         dot_product = fst vA * fst vB + snd vA * snd vB;
         mag_A = sqrt((fst vA)² + (snd vA)²);
         mag_B = sqrt((fst vB)² + (snd vB)²)
     in acos(dot_product / (mag_A * mag_B)))"
definition arc_length :: "real ⇒ real ⇒ real" where
  "arc_length radius angle = radius * angle"
definition O :: point where "O = (0, 0)"
definition A :: point where "A = (3, 0)"
definition B :: point where 
  "B = (3 * cos(pi/4), 3 * sin(pi/4))"
lemma "dist O A = 3"
  unfolding dist_def O_def A_def
  by auto
lemma "angle A O B = pi/4"
  unfolding angle_def O_def A_def B_def
  sorry 
theorem length_of_arc_OBA: "arc_length 3 (pi/4) = 3*pi/4"
  unfolding arc_length_def
  by simp