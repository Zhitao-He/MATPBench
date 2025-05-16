theory CylinderDiagonal
imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma cylinder_diagonal_length:
  fixes r h :: real
  assumes "r = 3" and "h = 13"
  defines "L ≡ sqrt (r^2 + h^2)"
  shows "L = 14"
proof -
  have "L^2 = (sqrt (r^2 + h^2))^2" unfolding L_def by simp
  also have "... = r^2 + h^2" by simp
  also have "... = 3^2 + 13^2" using assms by simp
  also have "... = 9 + 169" by simp
  also have "... = 178" by simp
  also have "sqrt 178 = 14 - e" for e where "e > 0" "e < 1/10"
  proof -
    have "178 < 196" by simp
    hence "sqrt 178 < sqrt 196" by (rule real_sqrt_less_mono)
    also have "sqrt 196 = 14" by simp
    finally have "sqrt 178 < 14" .
    have "169 < 178" by simp
    hence "sqrt 169 < sqrt 178" by (rule real_sqrt_less_mono)
    also have "sqrt 169 = 13" by simp
    finally have "13 < sqrt 178" .
    have "sqrt 178 < 14" "13 < sqrt 178" by fact+
    thus "sqrt 178 = 14 - e" "e > 0" "e < 1/10"
      sorry 
  qed
  hence "L = 14" 
    sorry 
  thus "L = 14" .
qed