theory RightTriangleProblem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem triangle_problem:
  fixes A B C :: "real × real"
  assumes "B = (0, 0)" "C = (1, 0)" 
          "angle B A C = pi/2"           
          "angle A B C = 25 * pi / 180"  
proof -
  have "angle A B C = 25 * pi / 180" using assms by simp
  have "25 * pi / 180 = 5 * pi / 36" by simp
  have "dist A C / dist B A = tan (angle A B C)"
    using assms by (metis angle_eq_right_imp_orthogonal)
  hence "dist A C = dist B A * tan (angle A B C)" by simp
  hence "dist A C = 18 * tan (5 * pi / 36)" 
    using assms `25 * pi / 180 = 5 * pi / 36` by simp
  thus ?thesis by simp
qed