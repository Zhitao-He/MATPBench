theory Concyclic_Circles
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

type_synonym point = "complex"

definition circle :: "point ⇒ real ⇒ point set" where
  "circle center radius = {p. cmod(p - center) = radius}"

definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle center radius p ⟷ cmod(p - center) = radius"

definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line p1 p2 p3 ⟷ (∃t. p3 = p1 + t *⇩C (p2 - p1))"

definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p1 p2 p3 ⟷ on_line p1 p2 p3 ∨ on_line p2 p3 p1 ∨ on_line p3 p1 p2"

definition concyclic :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "concyclic p1 p2 p3 p4 ⟷ 
    (∃c r. on_circle c r p1 ∧ on_circle c r p2 ∧ on_circle c r p3 ∧ on_circle c r p4)"

definition circumcenter :: "point ⇒ point ⇒ point ⇒ point ⇒ point" where
  "circumcenter p1 p2 p3 p4 = 
    (if concyclic p1 p2 p3 p4 
     then SOME c. ∃r. on_circle c r p1 ∧ on_circle c r p2 ∧ on_circle c r p3 ∧ on_circle c r p4
     else undefined)"

theorem circumcenter_CEDF_on_AB:
  fixes O P A B C D E F :: point
  assumes 
    "A ≠ B" and
    "O ≠ P" and
    "on_circle O (cmod(A - O)) A" and "on_circle O (cmod(A - O)) B" and
    "on_circle P (cmod(A - P)) A" and "on_circle P (cmod(A - P)) B" and
    "C ≠ D" and "on_line O C D" and
    "on_circle P (cmod(A - P)) C" and "on_circle P (cmod(A - P)) D" and
    "E ≠ F" and "on_line P E F" and
    "on_circle O (cmod(A - O)) E" and "on_circle O (cmod(A - O)) F" and
    "concyclic C E D F"
  shows "on_line A B (circumcenter C E D F)"
  sorry

end