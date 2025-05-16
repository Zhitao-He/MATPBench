theory ParallelogramProblem
imports
  Main
  "HOL-Analysis.Analysis"
begin
text ‹As shown in the diagram, AB = 2x + 3, BC = 5x, DA = DC, quadrilateral ADCB is a parallelogram.
Find the value of x.›
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition is_parallelogram :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_parallelogram A B C D ≡ 
    (fst B - fst A = fst C - fst D) ∧ 
    (snd B - snd A = snd C - snd D) ∧
    (fst C - fst B = fst D - fst A) ∧ 
    (snd C - snd B = snd D - snd A)"
theorem value_of_x:
  fixes x::real and A B C D::point
  assumes "x > 0"
      and "is_parallelogram A D C B"
      and "distance A B = 2*x + 3"
      and "distance B C = 5*x"
      and "distance D A = distance D C"
    shows "x = 1"
proof -
  from ‹is_parallelogram A D C B› have "distance A B = distance D C" 
    by (simp add: is_parallelogram_def distance_def)
  moreover
  from ‹is_parallelogram A D C B› have "distance A D = distance B C"
    by (simp add: is_parallelogram_def distance_def)
  from ‹distance A B = 2*x + 3› and ‹distance A B = distance D C›
  have "distance D C = 2*x + 3" by simp
  from ‹distance B C = 5*x› and ‹distance A D = distance B C›
  have "distance A D = 5*x" by simp
  from ‹distance D A = distance D C› and ‹distance D A = 5*x› and ‹distance D C = 2*x + 3›
  have "5*x = 2*x + 3" by simp
  hence "3*x = 3" by simp
  thus "x = 1" by simp
qed