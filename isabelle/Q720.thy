theory RightTriangleProblem
imports 
  Complex_Main 
  "HOL-Analysis.Euclidean_Space"
begin

section "Right Triangle Problem"

text ‹
  Problem: As shown in the diagram, AB=x, AC=6, BC=15, BC is perpendicular to AC.
  Find the value of x.
›

definition "A = (0::real, 0::real)"
definition "C = (0::real, 6::real)"
definition "B = (15::real, 6::real)"

lemma triangle_ABC_positions:
  "A = (0, 0)" 
  "C = (0, 6)"
  "B = (15, 6)"
  by (simp_all add: A_def C_def B_def)

lemma distinct_points:
  "A ≠ B" "B ≠ C" "C ≠ A"
  by (auto simp add: A_def B_def C_def)

lemma BC_perpendicular_to_AC:
  "let
     vecAC = (fst C - fst A, snd C - snd A);
     vecBC = (fst C - fst B, snd C - snd B)
   in
     fst vecAC * fst vecBC + snd vecAC * snd vecBC = 0"
  by (simp add: A_def B_def C_def)

lemma length_AB_equals_x:
  "let x = sqrt((fst A - fst B)^2 + (snd A - snd B)^2) in
   x = 3 * sqrt 29"
  by (simp add: A_def B_def C_def)
  
theorem triangle_ABC_hypotenuse_value:
  "let x = sqrt((fst A - fst B)^2 + (snd A - snd B)^2) in
   x = 3 * sqrt 29"
  by (simp add: A_def B_def C_def)

end