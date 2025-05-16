theory CirclePerimeter
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)"
record circle =
  center :: point
  radius :: real
definition perimeter :: "circle ⇒ real" where
  "perimeter c = 2 * pi * radius c"
definition on_circle :: "circle ⇒ point ⇒ bool" where
  "on_circle c p ⟷ distance (center c) p = radius c"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C = 
    ((fst B - fst A) * (fst C - fst B) + (snd B - snd A) * (snd C - snd B) = 0)"
lemma "∃B C E D circle_D.
  center circle_D = D ∧
  on_circle circle_D B ∧
  on_circle circle_D E ∧
  distance B E = 2 * radius circle_D ∧
  perpendicular E C B ∧
  perimeter circle_D = 8 * pi"
  by (rule exI)+