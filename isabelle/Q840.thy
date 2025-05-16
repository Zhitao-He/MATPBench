theory TriangleProblem
imports Complex_Main
begin
lemma triangle_value_x:
  fixes A B C :: "real × real"
  assumes "dist B A = 18"          
  have "dist B C = dist B A * sin (angle B A C)"
    by (metis assms(1) assms(2) assms(3) sine_law)
  also have "... = 18 * sin (pi/4)"
    using assms(1) by simp
  also have "... = 18 * (1/sqrt 2)"
    by simp
  also have "... = 9 * sqrt 2"
    by (simp add: field_simps)
  finally show ?thesis .
qed