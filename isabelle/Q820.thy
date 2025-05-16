theory TriangleProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹As shown in the diagram, AB=x, BC=y, CA=14, ∠CAB=30°, AB⊥CB. Find the value of x.›
lemma triangle_ABC_x_value:
  fixes A B C :: "real × real"
  fixes x y :: real
  assumes "A = (0, 0)"
  assumes "B = (x, 0)"
  assumes "C = (y, 7 * sqrt 3)"
  assumes "sqrt((C - A) ⋅ (C - A)) = 14" (* CA = 14 *)
  assumes "cos(pi / 6) = ((B - A) ⋅ (C - A)) / (sqrt((B - A) ⋅ (B - A)) * sqrt((C - A) ⋅ (C - A)))" (* ∠CAB = 30° *)
  assumes "(B - C) ⋅ (B - A) = 0" (* AB⊥CB *)
  shows "x = 7 * sqrt 3"
  