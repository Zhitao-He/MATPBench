theory TwoCircles
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
lemma two_circles_problem:
  fixes r1 r2 :: real
  assumes "r1 > 0" "r2 > 0" "r1 > r2" 
    and "8^2 + 6^2 = r1^2" 
    and "0^2 + k^2 = r2^2" 
    and "Q = (sqrt(r2^2), 0)" 
    and "R = (sqrt(r1^2), 0)" 
    and "|sqrt(r1^2) - sqrt(r2^2)| = 3" 
  shows "k = 7"
proof -
  from assms(4) have "r1^2 = 8^2 + 6^2" by simp
  hence "r1^2 = 64 + 36" by simp
  hence "r1^2 = 100" by simp
  hence "r1 = 10" using assms(1) by simp
  from assms(8) have "sqrt(r1^2) - sqrt(r2^2) = 3"
    using assms(1,2,3) by (simp add: abs_of_pos)
  hence "sqrt(r1^2) = 3 + sqrt(r2^2)" by simp
  hence "sqrt(100) = 3 + sqrt(r2^2)" using ‹r1^2 = 100› by simp
  hence "10 = 3 + sqrt(r2^2)" by simp
  hence "sqrt(r2^2) = 7" by simp
  hence "r2^2 = 49" by simp
  from assms(5) have "k^2 = r2^2" by simp
  hence "k^2 = 49" using ‹r2^2 = 49› by simp
  hence "k = 7 ∨ k = -7" by simp
  moreover from assms(2,5) have "k > 0" by auto
  ultimately show "k = 7" by simp
qed