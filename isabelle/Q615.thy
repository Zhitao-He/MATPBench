theory IsoscelesTriangle
imports Complex_Main "HOL-Analysis.Analysis"
begin
locale triangle_RST =
  fixes x :: real
  assumes "3*x - 5 = 2*x + 7" 
theorem isosceles_triangle:
  shows "3*x - 5 = 2*x + 7 ⟹ 3*x - 5 = 2*x + 7"
  by simp
lemma solve_for_x:
  assumes "3*x - 5 = 2*x + 7"
  shows "x = 12"
proof -
  from assms have "3*x - 5 = 2*x + 7" by simp
  hence "3*x - 2*x = 7 + 5" by (simp add: algebra_simps)
  hence "x = 12" by simp
  thus "x = 12" by simp
qed
lemma triangle_sides:
  assumes "x = 12"
  shows "3*x - 5 = 31" and "2*x + 7 = 31" and "ST = 22"
proof -
  from assms have "3*x - 5 = 3*12 - 5" by simp
  also have "... = 36 - 5" by simp
  also have "... = 31" by simp
  finally show "3*x - 5 = 31" .
  from assms have "2*x + 7 = 2*12 + 7" by simp
  also have "... = 24 + 7" by simp
  also have "... = 31" by simp
  finally show "2*x + 7 = 31" .
  show "ST = 22" by simp
qed
theorem RST_isosceles:
  assumes "3*x - 5 = 2*x + 7"
  shows "∃y. 3*x - 5 = y ∧ 2*x + 7 = y"
proof -
  from assms have "x = 12" using solve_for_x by simp
  hence "3*x - 5 = 31" and "2*x + 7 = 31" using triangle_sides by auto
  thus "∃y. 3*x - 5 = y ∧ 2*x + 7 = y" by (rule_tac x="31" in exI, auto)
qed