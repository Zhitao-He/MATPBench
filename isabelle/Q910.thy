theory CircleProblem
imports Main HOL.Real Complex_Main
begin
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (0, 10)"  
definition C :: "real × real" where "C = (0, 20)"
definition Y :: "real × real" where "Y = (0, 7)"
definition diam_A :: "real" where "diam_A = 10"
definition diam_B :: "real" where "diam_B = 20"
definition diam_C :: "real" where "diam_C = 14"
definition rad_A :: "real" where "rad_A = diam_A / 2"
definition rad_B :: "real" where "rad_B = diam_B / 2"
definition rad_C :: "real" where "rad_C = diam_C / 2"
definition length_BY :: "real" where "length_BY = sqrt((fst B - fst Y)^2 + (snd B - snd Y)^2)"
lemma "length_BY = 3"
proof -
  have "length_BY = sqrt((fst B - fst Y)^2 + (snd B - snd Y)^2)"
    by (simp add: length_BY_def)
  also have "... = sqrt((0 - 0)^2 + (10 - 7)^2)"
    by (simp add: B_def Y_def)
  also have "... = sqrt(0 + 9)"
    by simp
  also have "... = sqrt 9"
    by simp
  also have "... = 3"
    by simp
  finally show ?thesis .
qed