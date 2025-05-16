theory LineIntersectionArea
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition line1 :: "point ⇒ bool" where
  "line1 p ≡ snd p = -2 * fst p + 8"
definition line2 :: "point ⇒ bool" where
  "line2 p ≡ snd p = (fst p) / 2 - 2"
definition line3 :: "point ⇒ bool" where
  "line3 p ≡ fst p = -2"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle A B C = abs ((fst A * (snd B - snd C) + 
                           fst B * (snd C - snd A) + 
                           fst C * (snd A - snd B)) / 2)"
lemma intersection_point: "line1 (4, 0) ∧ line2 (4, 0)"
  unfolding line1_def line2_def
  by (auto simp: algebra_simps)
lemma intersection13: "line1 (-2, 12) ∧ line3 (-2, 12)"
  unfolding line1_def line3_def
  by (auto simp: algebra_simps)
lemma intersection23: "line2 (-2, -3) ∧ line3 (-2, -3)"
  unfolding line2_def line3_def
  by (auto simp: algebra_simps)
theorem triangle_area: "area_triangle (4, 0) (-2, 12) (-2, -3) = 45"
  unfolding area_triangle_def
  by (auto simp: algebra_simps)