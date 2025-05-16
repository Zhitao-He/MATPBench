theory TriangleProblem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the diagram, AB=10, AC=x, BC=y, ∠CBA=45°, AC is perpendicular to BC. 
      Find the value of x.›
lemma triangle_problem:
  fixes A B C :: "real^2"
  assumes "dist A B = 10"
    and "dist A C = x"  
    and "dist B C = y"
    and "angle B A C = pi/2" (* AC is perpendicular to BC *)
    and "angle C B A = pi/4" (* 45 degrees *)
  shows "x = 5 * sqrt 2"
proof -
  have "cos (angle C B A) = cos (pi/4)" using assms(5) by simp
  also have "... = sqrt 2 / 2" by simp
  finally have cos_CBA: "cos (angle C B A) = sqrt 2 / 2" .
  have "sin (angle C B A) = sin (pi/4)" using assms(5) by simp
  also have "... = sqrt 2 / 2" by simp
  finally have sin_CBA: "sin (angle C B A) = sqrt 2 / 2" .
  (* Apply the law of sines in triangle ABC *)
  have "x / sin (angle C B A) = dist A B / sin (angle A C B)" 
    using law_of_sines[of A B C] assms(2) assms(3) by simp
  (* Since angle ACB = 90°, sin(ACB) = 1 *)
  have "sin (angle A C B) = 1" 
    using assms(4) right_angle_sin by simp
  (* Substitute and solve for x *)
  have "x = dist A B * sin (angle C B A)" 
    using ‹x / sin (angle C B A) = dist A B / sin (angle A C B)› ‹sin (angle A C B) = 1› by simp
  thus "x = 5 * sqrt 2" 
    using sin_CBA assms(1) by (simp add: algebra_simps)
qed
  