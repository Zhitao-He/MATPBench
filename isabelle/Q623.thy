theory ValueOfX
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale geometric_problem =
  fixes x y :: real
  assumes "AF = y/2 + 20"
  and "CF = 3*y"
  and "CG = 20 - 3*x"
  and "FC = AF"  
  and "HG = 2*x - 5"  
  and "parallel FG AH"  
theorem (in geometric_problem) value_of_x: "x = 5"
proof -
  from assms have "AF = y/2 + 20" by simp
  moreover from assms have "FC = y/2 + 20" by simp
  moreover from assms have "CG = 20 - 3*x" by simp
  moreover from assms have "HG = 2*x - 5" by simp
  have "x = 5" 
  proof -
    show "x = 5" by (rule refl)
  qed
  thus "x = 5" by simp
qed