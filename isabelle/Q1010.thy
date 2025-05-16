theory InscribedQuadConcyclic
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle O p ⟷ (∃r > 0. dist O p = r)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p q r ⟷ (∃t. r = p + t *⇩R (q - p) ∨ r = q + t *⇩R (p - q))"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = ((fst p + fst q) / 2, (snd p + snd q) / 2)"
definition cyclic4 :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "cyclic4 p q r s ⟷ (∃c. on_circle c p ∧ on_circle c q ∧ on_circle c r ∧ on_circle c s)"
locale inscribed_quad =
  fixes O A B C D :: point
  assumes on_circle_O: "on_circle O A" "on_circle O B" "on_circle O C" "on_circle O D"
  assumes distinct: "A ≠ B" "D ≠ C" "A ≠ D" "B ≠ C" 
context inscribed_quad
begin
definition E :: point where
  "E ≡ SOME E. collinear A B E ∧ collinear D C E ∧ E ≠ A ∧ E ≠ B ∧ E ≠ C ∧ E ≠ D"
definition F :: point where
  "F ≡ SOME F. collinear A D F ∧ collinear B C F ∧ F ≠ A ∧ F ≠ D ∧ F ≠ B ∧ F ≠ C"
definition G :: point where
  "G ≡ midpoint E F"
definition K :: point where
  "K ≡ SOME K. K ≠ A ∧ on_circle O K ∧ collinear A G K"
theorem inscribed_quad_ckfe_concyclic:
  shows "cyclic4 C K F E"
  sorry