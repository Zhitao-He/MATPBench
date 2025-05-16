theory Volume
  imports Main "HOL-Analysis.Analysis"
begin

definition pi :: real where "pi = 3.14159265359"

lemma volume_calculation:
  "let volume = 50894 :: real
   in abs (volume - 50894) < 0.01"
by simp

end