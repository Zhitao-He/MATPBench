theory Blahaj_Sequence
  imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt((fst A - fst B)^2 + (snd A - snd B)^2)"
definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad d = d * pi / 180"
definition rotate :: "point ⇒ point ⇒ real ⇒ point" where
  "rotate O P angle = 
    let x = fst P - fst O;
        y = snd P - snd O
    in (fst O + x * cos angle - y * sin angle, 
        snd O + x * sin angle + y * cos angle)"
definition A0 :: point where "A0 = (0, 0)"
definition v1 :: point where "v1 = (1, 0)"
definition v2 :: point where 
  "v2 = (cos (deg_to_rad 1), sin (deg_to_rad 1))"
definition valid_sequence :: "point list ⇒ bool" where
  "valid_sequence seq ⟷ 
    (hd seq = A0) ∧
    (∀i. i > 0 ∧ i < length seq ⟶ 
      dist (seq ! (i-1)) (seq ! i) = 1 ∧
      dist (seq ! i) A0 > dist (seq ! (i-1)) A0)"
theorem largest_possible_n:
  "⟦ valid_sequence seq; length seq = n + 1 ⟧ ⟹ n ≤ 90"
  sorry
theorem existence:
  "∃seq. valid_sequence seq ∧ length seq = 91"
  sorry