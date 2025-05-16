theory Parallelogram_Theorem
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin
context euclidean_space begin
section "Parallelogram Theorem"
definition parallelogram :: "'a::euclidean_space set ⇒ bool" where
  "parallelogram S ⟷ (∃ A B C D. S = {A, B, C, D} ∧ 
    A ≠ B ∧ B ≠ C ∧ C ≠ D ∧ D ≠ A ∧
    (B - A) = (C - D) ∧ (C - B) = (D - A))"
definition collinear :: "'a::euclidean_space ⇒ 'a ⇒ 'a ⇒ bool" where
  "collinear A B C ⟷ (∃ t. C = A + t *⇩R (B - A))"
definition perpendicular :: "'a::euclidean_space ⇒ 'a ⇒ 'a ⇒ 'a ⇒ bool" where
  "perpendicular A B C D ⟷ ((B - A) •⇩R (D - C) = 0)"
lemma parallelogram_gc_perp_ac:
  fixes A B C D E F G :: "'a::euclidean_space"
  assumes "parallelogram {A, B, C, D}"
    and "collinear A B E" 
    and "perpendicular C E A B"
    and "collinear A D F"
    and "perpendicular C F A D"
    and "collinear E F G"
    and "collinear B D G"
  shows "perpendicular G C A C"