theory PT_Length
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
theorem PT_length:
  fixes P T R S Q :: "real^2"
  assumes "R = vec 0 0"
    and "S = vec 10 0"
    and "Q = vec 15 0"
    and "P = vec 15 25"
    and "T = vec 0 (20/3)"
  shows "dist P T = 20/3"
proof -
  have "dist P T = norm (P - T)" by (simp add: dist_norm)
  also have "... = norm (vec 15 25 - vec 0 (20/3))" 
    using assms by simp
  also have "... = norm (vec 15 (25 - (20/3)))" by simp
  also have "... = norm (vec 15 (75/3 - 20/3))" by simp
  also have "... = norm (vec 15 (55/3))" by simp
  also have "... = sqrt ((15)^2 + (55/3)^2)" by (simp add: norm_vec_def)
  also have "... = sqrt (225 + (55/3)^2)" by simp
  also have "... = sqrt (225 + 3025/9)" by simp
  also have "... = sqrt (2025/9 + 3025/9)" by simp
  also have "... = sqrt (5050/9)" by simp
  also have "... = sqrt ((20/3)^2)" by (simp add: algebra_simps eval_nat_numeral)
  also have "... = 20/3" by simp
  finally show ?thesis .
qed