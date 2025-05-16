theory RainfallMosquitosBats
imports Complex_Main "HOL-Analysis.Analysis"
begin
(* Define the functions representing mosquitos and bats populations based on rainfall *)
definition f :: "real ⇒ real" where
  "f x = 5 * x - x^2"
definition g :: "real ⇒ real" where
  "g x = 3 * x - 0.5 * x^2"
(* Theorem stating that when rainfall is 0cm or approximately 4cm, 
   the number of mosquitos equals the number of bats *)
theorem rainfall_mosquitos_bats_intersect:
  "f 0 = g 0 ∧ (∃x. abs(x - 4) ≤ 0.25 ∧ f x = g x)"
proof -
  (* At x = 0, both functions equal 0 *)
  have "f 0 = 5 * 0 - 0^2" by (simp add: f_def)
  also have "... = 0" by simp
  finally have f0: "f 0 = 0" .
  have "g 0 = 3 * 0 - 0.5 * 0^2" by (simp add: g_def)
  also have "... = 0" by simp
  finally have g0: "g 0 = 0" .
  from f0 g0 have "f 0 = g 0" by simp
  (* For x = 4 *)
  have "f 4 = 5 * 4 - 4^2" by (simp add: f_def)
  also have "... = 20 - 16" by simp
  also have "... = 4" by simp
  finally have f4: "f 4 = 4" .
  have "g 4 = 3 * 4 - 0.5 * 4^2" by (simp add: g_def)
  also have "... = 12 - 0.5 * 16" by simp
  also have "... = 12 - 8" by simp
  also have "... = 4" by simp
  finally have g4: "g 4 = 4" .
  from f4 g4 have "f 4 = g 4" by simp
  (* Therefore, both at x = 0 and x ≈ 4, f x = g x *)
  thus ?thesis
    by (rule conjI, fact ‹f 0 = g 0›, rule exI[where x=4], 
        auto simp add: ‹f 4 = g 4›)
qed