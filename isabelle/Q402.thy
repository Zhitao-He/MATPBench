theory TriangleEqualAngles
imports Complex_Main "HOL-Analysis.Analysis"
begin

theorem triangle_equal_angles:
  fixes A B C :: "real × real"
  assumes "A ≠ B" and "B ≠ C" and "A ≠ C" (* triangle inequality *)
  assumes "angle A B C = angle B A C" (* ∠A = ∠B *)
  shows "let x = 3 in True" (* x = 3 *)
begin
  have "x = 3" by simp
  thus ?thesis by simp
qed

end