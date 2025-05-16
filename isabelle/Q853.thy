theory TriangleArea
imports
  Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = abs(
     (fst B - fst A) * (snd C - snd A) - (fst C - fst A) * (snd B - snd A)
   ) / 2"
definition A :: point where "A = (0, 10)"
definition B :: point where "B = (24, 0)"
definition C :: point where "C = (8, 0)"
definition D :: point where "D = (0, 0)"
lemma conditions_satisfied:
  "distance A B = 26 ∧
   distance A D = 10 ∧
   distance C B = 16 ∧
   distance D C = 8 ∧
   (fst A = fst D) ∧ (fst C = fst D + 8) ∧ (fst B = fst D + 24) ∧ (snd C = snd D) ∧ (snd B = snd D) ∧ (snd A = snd D + 10)"
  unfolding A_def B_def C_def D_def distance_def
  by (auto simp add: power2_eq_square)
theorem triangle_ACB_area:
  "triangle_area A C B = 80"
  unfolding A_def B_def C_def triangle_area_def
  by auto