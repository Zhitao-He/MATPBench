theory PutnamCircleTangents
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)² + (snd p - snd q)²)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = ((fst p + fst q) / 2, (snd p + snd q) / 2)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle c p r ≡ distance c p = r"
definition is_circle :: "point ⇒ real ⇒ set point" where
  "is_circle c r = {p. on_circle c p r}"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line p q r ≡ ∃t. r = (fst p + t * (fst q - fst p), snd p + t * (snd q - snd p))"
definition is_diameter :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_diameter c a b ≡ midpoint a b = c"
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear p q r ≡ on_line p q r ∨ on_line p r q ∨ on_line q r p"
definition tangent_at :: "point ⇒ real ⇒ point ⇒ point ⇒ bool" where
  "tangent_at c r p e ≡ on_circle c p r ∧ 
    (∀q. on_line p e q ∧ q ≠ p ⟶ distance c q > r)"
definition intersect_lines :: "point ⇒ point ⇒ point ⇒ point ⇒ point option" where
  "intersect_lines a b c d ≡
    let
      dxa = fst b - fst a;
      dya = snd b - snd a;
      dxc = fst d - fst c;
      dyc = snd d - snd c;
      det = dxa * dyc - dya * dxc
    in
      if det = 0 then None
      else 
        let
          s = ((fst c - fst a) * dyc - (snd c - snd a) * dxc) / det;
          t = ((fst c - fst a) * dya - (snd c - snd a) * dxa) / det
        in
          if 0 ≤ s ∧ s ≤ 1 ∧ 0 ≤ t ∧ t ≤ 1 
          then Some (fst a + s * dxa, snd a + s * dya)
          else None"
definition concyclic4 :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "concyclic4 p q r s ≡ ∃c radius. 
    on_circle c p radius ∧ 
    on_circle c q radius ∧ 
    on_circle c r radius ∧ 
    on_circle c s radius"
theorem putnam_geometry_tangent_concyclic:
  fixes O A B C D E F M :: point
  assumes "is_diameter O A B"
  and "on_circle O C (distance O A)"
  and "on_circle O D (distance O A)"
  and "¬ colinear A B C"
  and "¬ colinear A B D"
  and "tangent_at O (distance O A) C E"
  and "tangent_at O (distance O A) D E"
  and "∃F. on_line B C F ∧ on_line A D F"
  and "∃M. on_line E F M ∧ on_line A B M"
  and "E ≠ C" and "E ≠ D" and "C ≠ D"
  shows "concyclic4 E C M D"
  sorry