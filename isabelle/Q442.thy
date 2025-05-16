theory FourSemicircles
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition square :: "(real × real) set" where
  "square = {(x, y). 0 ≤ x ∧ x ≤ 2 ∧ 0 ≤ y ∧ y ≤ 2}"
definition center1 :: "real × real" where "center1 = (1, 0)"
definition center2 :: "real × real" where "center2 = (2, 1)"
definition center3 :: "real × real" where "center3 = (1, 2)"
definition center4 :: "real × real" where "center4 = (0, 1)"
definition in_semicircle :: "real × real ⇒ real × real ⇒ bool" where
  "in_semicircle p c = (
    (fst p - fst c)^2 + (snd p - snd c)^2 ≤ 1 ∧ 
    (case c of
      (1, 0) ⇒ snd p ≥ 0 |
      (2, 1) ⇒ fst p ≤ 2 |
      (1, 2) ⇒ snd p ≤ 2 |
      (0, 1) ⇒ fst p ≥ 0 |
      _ ⇒ False)
  )"
definition shaded :: "(real × real) set" where
  "shaded = {p ∈ square. 
    ¬ in_semicircle p center1 ∧
    ¬ in_semicircle p center2 ∧
    ¬ in_semicircle p center3 ∧
    ¬ in_semicircle p center4
  }"
definition hatched :: "(real × real) set" where
  "hatched = square - (
    {p. in_semicircle p center1} ∪
    {p. in_semicircle p center2} ∪
    {p. in_semicircle p center3} ∪
    {p. in_semicircle p center4}
  )"
lemma square_area: "content square = 4"
  unfolding square_def
  by (simp add: content_rectangle)
lemma circle_area: "content {p. (fst p - fst c)^2 + (snd p - snd c)^2 ≤ 1} = pi"
  for c :: "real × real"
  by (simp add: content_ball)
lemma semicircle_area: "content {p. in_semicircle p c} = pi/2"
  for c :: "real × real"
  sorry 
lemma shaded_area: "content shaded = 4 - 2*sqrt 3"
  sorry 
lemma hatched_area: "content hatched = shaded_area"
  sorry 
theorem area_difference: "|content shaded - content hatched| = 4 - 2*sqrt 3"
  by (simp add: shaded_area hatched_area)