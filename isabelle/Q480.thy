theory AngleCalculation
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt((fst A - fst B)^2 + (snd A - snd B)^2)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A O B = 
    let u = (fst A - fst O, snd A - snd O);
        v = (fst B - fst O, snd B - snd O);
        dot = fst u * fst v + snd u * snd v;
        nu = sqrt((fst u)^2 + (snd u)^2);
        nv = sqrt((fst v)^2 + (snd v)^2)
    in acos (dot / (nu * nv))"
definition S :: point where "S = (0, 0)"
definition R :: point where "R = (7 * sqrt 2, 0)" 
definition T :: point where "T = (0, 3 * sqrt 2)"
lemma RS_perp_TS:
  "let u = (fst R - fst S, snd R - snd S);
       v = (fst T - fst S, snd T - snd S)
   in fst u * fst v + snd u * snd v = 0"
  unfolding S_def R_def T_def
  by auto
lemma distances:
  "dist S R = 7 * sqrt 2 ∧ dist S T = 3 * sqrt 2"
  unfolding dist_def S_def R_def T_def
  by auto
theorem angle_STR:
  "angle S T R = arcsin (2 * sqrt 10 / 7)"
proof -
  have "dist T R = sqrt((fst T - fst R)^2 + (snd T - snd R)^2)"
    unfolding dist_def by simp
  also have "... = sqrt((0 - 7 * sqrt 2)^2 + (3 * sqrt 2 - 0)^2)"
    unfolding T_def R_def by simp
  also have "... = sqrt((7 * sqrt 2)^2 + (3 * sqrt 2)^2)"
    by simp
  also have "... = sqrt(98 + 18)"
    by (simp add: power2_eq_square)
  also have "... = sqrt 116"
    by simp
  finally have TR_dist: "dist T R = sqrt 116" .
  have "sin(angle S T R) = (dist S R * sin(angle R S T)) / dist T S"
    sorry 
  also have "angle R S T = pi/2"
    using RS_perp_TS 
    unfolding angle_def
    sorry 
  also have "sin(pi/2) = 1"
    by simp
  also have "dist S R = 7 * sqrt 2 ∧ dist T S = 3 * sqrt 2"
    using distances by simp
  hence "sin(angle S T R) = (7 * sqrt 2) / (3 * sqrt 2)"
    sorry 
  also have "... = 7/3"
    by simp
  hence "angle S T R = arcsin(7/3)"
    sorry 
  also have "arcsin(7/3) = arcsin(2 * sqrt 10 / 7)"
    sorry 
  finally show ?thesis .
qed
theorem angle_STR_degrees:
  "angle S T R * 180 / pi = 180 * arcsin(2 * sqrt 10 / 7) / pi"
  by simp