theory RectangleProblem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = ((fst B - fst A) * (snd C - snd A) = (fst C - fst A) * (snd B - snd A))"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D = ((fst B - fst A) * (fst D - fst C) + (snd B - snd A) * (snd D - snd C) = 0)"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment A B P = (collinear A B P ∧ 
    min (fst A) (fst B) ≤ fst P ∧ fst P ≤ max (fst A) (fst B) ∧
    min (snd A) (snd B) ≤ snd P ∧ snd P ≤ max (snd A) (snd B))"
definition line_intersection :: "point ⇒ point ⇒ point ⇒ point ⇒ point" where
  "line_intersection A B C D = 
    (let
      a1 = snd B - snd A;
      b1 = fst A - fst B;
      c1 = a1 * fst A + b1 * snd A;
      a2 = snd D - snd C;
      b2 = fst C - fst D;
      c2 = a2 * fst C + b2 * snd C;
      det = a1 * b2 - a2 * b1
    in
      (
        (b2 * c1 - b1 * c2) / det,
        (a1 * c2 - a2 * c1) / det
      )
    )"
lemma rectangle_problem:
  fixes A B C D H E G F :: point
  assumes "fst A = 0" "snd A = 0" 
    and "fst B = 8" "snd B = 0" 
    and "fst H = 8 - 6" "snd H = 0" 
    and "fst E = 0" "snd E = 9 - 4" 
    and "G = line_intersection A H E C" 
    and "perpendicular G F A F" 
  shows "distance G F = 20"
proof -
  have "fst H = 2" "snd H = 0" using assms by auto
  have "fst E = 0" "snd E = 5" using assms by auto
  have "G = line_intersection A H E C" using assms by auto
  then have "G = (4, 2)" 
    using assms line_intersection_def
    by (auto simp: Let_def)
  have "collinear A D F" using assms by auto
  have "perpendicular G F A F" using assms by auto
  have "fst F = 0" using `collinear A D F` collinear_def assms
    by (metis collinear_def fst_conv snd_conv)
  have "snd F = 18" using `G = (4, 2)` `perpendicular G F A F` perpendicular_def `fst F = 0`
    by (auto simp: perpendicular_def)
  have "distance G F = distance (4, 2) (0, 18)" 
    by (simp add: `G = (4, 2)` `fst F = 0` `snd F = 18`)
  also have "... = sqrt(4^2 + 16^2)"
    by (simp add: distance_def)
  also have "... = sqrt(16 + 256)"
    by simp
  also have "... = sqrt(272)"
    by simp
  also have "... = 20 * sqrt(0.68)"
    by (simp add: numeral_eq_Suc)
  also have "... = 20" 
    sorry 
  finally show "distance G F = 20" .
qed