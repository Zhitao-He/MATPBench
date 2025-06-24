theory Similar_Quadrilaterals
  imports Main
begin
consts
  area :: "('a × 'a × 'a × 'a) ⇒ real"
definition similar_quadrilaterals :: 
  "('a × 'a × 'a × 'a) ⇒ ('b × 'b × 'b × 'b) ⇒ bool" where
  "similar_quadrilaterals Q1 Q2 ≡ 
    (∃k > 0. 
      (∀(P1,P2)∈set [(fst Q1, snd Q1), (snd Q1, fst (snd Q1)), (fst (snd Q1), snd (snd Q1)), (snd (snd Q1), fst Q1)].
        (∃(Q1',Q2')∈set [(fst Q2, snd Q2), (snd Q2, fst (snd Q2)), (fst (snd Q2), snd (snd Q2)), (snd (snd Q2), fst Q2)].
          dist P1 P2 = k * dist Q1' Q2')))"
consts
  A B C D E F G H :: "'p"
abbreviation ABCD :: "('p × 'p × 'p × 'p)" where
  "ABCD ≡ (A, B, C, D)"
abbreviation EFGH :: "('p × 'p × 'p × 'p)" where
  "EFGH ≡ (E, F, G, H)"
axiomatization where
  area_ABCD: "area ABCD = 846" and
  area_EFGH: "area EFGH = 376" and
  CB_def: "dist C B = x" and
  FG_def: "dist F G = 24" and
  sim: "similar_quadrilaterals ABCD EFGH"
definition ratio_of_similar_quadrilaterals :: 
  "('a × 'a × 'a × 'a) ⇒ ('b × 'b × 'b × 'b) ⇒ real" where
  "ratio_of_similar_quadrilaterals Q1 Q2 ≡ sqrt (area Q1 / area Q2)"
lemma ratio_value:
  "ratio_of_similar_quadrilaterals ABCD EFGH = 3 / 2"
  unfolding ratio_of_similar_quadrilaterals_def area_ABCD area_EFGH
  by simp
end