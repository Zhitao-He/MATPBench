theory ShadedArea
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition O :: point where "O = (0, 0)"
definition A :: point where "A = (1, 0)"
definition B :: point where "B = (0, 1)"
definition Q :: point where "Q = (1, 1)"
definition quarter_circle_O :: "point ⇒ bool" where
  "quarter_circle_O P ⟷ (fst P)^2 + (snd P)^2 = 1 ∧ fst P ≥ 0 ∧ snd P ≥ 0"
definition quarter_circle_A :: "point ⇒ bool" where
  "quarter_circle_A P ⟷ (fst P - 1)^2 + (snd P)^2 = 1 ∧ fst P ≤ 1 ∧ snd P ≥ 0"
definition shaded_region :: "point ⇒ bool" where
  "shaded_region P ⟷ quarter_circle_O P ∧ quarter_circle_A P"
theorem shaded_area_is_half:
  "∫∫ {(x,y). shaded_region (x,y)}. (1::real) 𝑑(x,y) = 1/2"
  sorry