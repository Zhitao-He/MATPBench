theory GeometryProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹As shown in the figure, two circles O and P with unequal radii intersect at points A and B.
A line CD through A meets circle O at C and circle P at D. The extension of CB intersects
circle P again at F, and the extension of DB intersects circle O again at E.
The perpendicular from A to CD meets the perpendicular bisector of EF at G.
Prove that AG^2 = EG^2 + AC * AD.›
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p₁ p₂ = sqrt((fst p₂ - fst p₁)² + (snd p₂ - snd p₁)²)"
definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle center radius p = (dist center p = radius)"
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear p₁ p₂ p₃ = (
    let 
      v₁ = (fst p₂ - fst p₁, snd p₂ - snd p₁);
      v₂ = (fst p₃ - fst p₁, snd p₃ - snd p₁)
    in
    (∃t. v₂ = (t * fst v₁, t * snd v₁)) ∨ 
    (∃t. v₁ = (t * fst v₂, t * snd v₂))
  )"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line p₁ p₂ p = colinear p₁ p₂ p"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p₁ p₂ p₃ p₄ = (
    let
      v₁ = (fst p₂ - fst p₁, snd p₂ - snd p₁);
      v₂ = (fst p₄ - fst p₃, snd p₄ - snd p₃)
    in
    fst v₁ * fst v₂ + snd v₁ * snd v₂ = 0
  )"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p₁ p₂ = ((fst p₁ + fst p₂)/2, (snd p₁ + snd p₂)/2)"
definition perpendicular_bisector_point :: "point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular_bisector_point p₁ p₂ p = (
    let mid = midpoint p₁ p₂;
        v = (fst p₂ - fst p₁, snd p₂ - snd p₁);
        perp_v = (- snd v, fst v)
    in
    ∃t. p = (fst mid + t * fst perp_v, snd mid + t * snd perp_v)
  )"
theorem geometry_circles_power_of_point:
  fixes O P A B C D E F G :: point
  fixes rO rP :: real
  assumes 
    "rO ≠ rP" and
    "on_circle O rO A" and
    "on_circle O rO B" and
    "on_circle P rP A" and
    "on_circle P rP B" and
    "A ≠ B" and
    "colinear C A D" and
    "on_circle O rO C" and
    "on_circle P rP D" and
    "C ≠ A" and
    "D ≠ A" and
    "F ≠ B" and
    "on_line C B F" and
    "on_circle P rP F" and
    "F ≠ C" and
    "E ≠ B" and
    "on_line D B E" and
    "on_circle O rO E" and
    "E ≠ D" and
    "perpendicular A G C D" and
    "perpendicular_bisector_point E F G"
  shows "(dist A G)² = (dist E G)² + (dist A C) * (dist A D)"
  oops