theory CirclesIntersection
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
type_synonym circle = "point × real"
definition on_circle :: "point ⇒ circle ⇒ bool" where
  "on_circle p c ≡ dist p (fst c) = snd c"
definition line_through :: "point ⇒ point ⇒ point set" where
  "line_through p q = {r. ∃t. r = (1-t) *⇩R p + t *⇩R q}"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p q r ≡ r ∈ line_through p q"
definition vec :: "point ⇒ point ⇒ point" where
  "vec p q = (fst q - fst p, snd q - snd p)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product v w = fst v * fst w + snd v * snd w"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p q r s ≡ dot_product (vec p q) (vec r s) = 0"
definition perp_line :: "point ⇒ point ⇒ point ⇒ point set" where
  "perp_line p q r = {s. perpendicular p q r s ∧ s ∈ line_through r (r + (-(snd (vec p q)), fst (vec p q)))}"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = ((fst p + fst q)/2, (snd p + snd q)/2)"
definition perp_bisector :: "point ⇒ point ⇒ point set" where
  "perp_bisector p q = perp_line p q (midpoint p q)"
theorem circles_intersect_theorem:
  fixes O P A B C D E F G :: point
  fixes r_O r_P :: real
  assumes "r_O > 0" "r_P > 0" "r_O ≠ r_P"
          "on_circle A (O, r_O)" "on_circle A (P, r_P)" 
          "on_circle B (O, r_O)" "on_circle B (P, r_P)" "A ≠ B"
          "on_circle C (O, r_O)" "on_circle D (P, r_P)"
          "collinear C D A" "A ≠ C" "A ≠ D"
          "on_circle F (P, r_P)" "∃t>1. F = (1-t) *⇩R C + t *⇩R B"
          "on_circle E (O, r_O)" "∃t>1. E = (1-t) *⇩R D + t *⇩R B"
          "G ∈ perp_line C D A" "G ∈ perp_bisector E F"
  shows "(dist A G)^2 = (dist E G)^2 + (dist A C) * (dist A D)"
proof -
  sorry
qed