theory RegularOctagon
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹Proof ABCDEFGH is a regular octagon of side 12cm. Find the area in square centimeters 
      of trapezoid BCDE. Express your answer in simplest radical form.›
definition n :: real where "n = 8"
definition side :: real where "side = 12"
definition theta :: real where "theta = 2 * pi / n"
definition r :: real where "r = side / (2 * sin (pi / n))"
definition vertex :: "nat ⇒ complex" where
  "vertex k = complex_of_real (r * cos (2 * pi * real k / n)) + 
               complex_of_real (r * sin (2 * pi * real k / n)) * \<i>"
definition A :: complex where "A = vertex 0"
definition B :: complex where "B = vertex 1"
definition C :: complex where "C = vertex 2"
definition D :: complex where "D = vertex 3"
definition E :: complex where "E = vertex 4"
definition F :: complex where "F = vertex 5"
definition G :: complex where "G = vertex 6"
definition H :: complex where "H = vertex 7"
definition polygon_area :: "complex list ⇒ real" where
  "polygon_area vertices = 
    (1/2) * abs (∑ i < length vertices. 
                   Im ((vertices!i) * cnj (vertices!((i+1) mod length vertices))))"
definition trapezoid_BCDE_area :: real where
  "trapezoid_BCDE_area = polygon_area [B, C, D, E]"
theorem area_is_correct: "trapezoid_BCDE_area = 72 + 72 * sqrt 2"
proof -
  have "n = 8" by (simp add: n_def)
  moreover have "side = 12" by (simp add: side_def)
  moreover have "theta = 2 * pi / 8" by (simp add: theta_def n_def)
  moreover have "r = 12 / (2 * sin (pi / 8))" by (simp add: r_def side_def n_def)
  have "trapezoid_BCDE_area = 72 + 72 * sqrt 2"
    sorry
  thus ?thesis by assumption
qed
lemma "trapezoid_BCDE_area = 72 + 72 * sqrt 2"
  by (simp add: area_is_correct)