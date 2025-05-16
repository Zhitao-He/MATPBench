theory GeometryProblem
imports Complex_Main "HOL-Analysis.Analysis"
begin

section "Segment Length Problem"

lemma segment_AC_eq_6:
  fixes A D C B :: real
  assumes "A < D" "D < C" "C < B"
          "B - C = 4"
          "B - D = 7"
          "D = (A + C) / 2"
  shows "C - A = 6"
proof -
  from assms(6) have "2 * D = A + C" by (simp add: field_simps)
  hence "A = 2 * D - C" by (simp add: field_simps)
  
  from assms(4) have "C = B - 4" by simp
  from assms(5) have "D = B - 7" by simp
  
  have "A = 2 * (B - 7) - (B - 4)" using `A = 2 * D - C` `C = B - 4` `D = B - 7`
    by simp
  also have "... = 2*B - 14 - B + 4" by (simp add: algebra_simps)
  also have "... = B - 10" by simp
  finally have "A = B - 10" .
  
  have "C - A = (B - 4) - (B - 10)" using `C = B - 4` `A = B - 10`
    by simp
  also have "... = 6" by simp
  finally show "C - A = 6" .
qed

end