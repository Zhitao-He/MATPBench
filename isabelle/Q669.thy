theory TriangleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
definition angle :: "real^2 ⇒ real^2 ⇒ real" where
  "angle u v = acos ((u·v) / (norm u * norm v))"
theorem triangle_side_length_x:
  fixes A B C :: "real^2"
  assumes "dist A C = 11"
          "angle (B - A) (C - A) = 2*pi/3"
          "angle (A - B) (C - B) = pi/6"
  shows "dist B C = 11 * sqrt 3"
proof -
  have "sin (angle (B - A) (C - A)) = sin (2*pi/3)" 
    by (simp add: assms(2))
  also have "... = sin (pi/3)" 
    by (simp add: sin_2pi_3)
  also have "... = sqrt 3 / 2" 
    by (simp add: sin_pi_3)
  finally have sin_CAB: "sin (angle (B - A) (C - A)) = sqrt 3 / 2" .
  have "sin (angle (A - B) (C - B)) = sin (pi/6)" 
    by (simp add: assms(3))
  also have "... = 1/2" 
    by (simp add: sin_pi_6)
  finally have sin_ABC: "sin (angle (A - B) (C - B)) = 1/2" .
  have "dist B C / sin (angle (B - A) (C - A)) = dist A C / sin (angle (A - B) (C - B))"
    sorry
  hence "dist B C = dist A C * sin (angle (B - A) (C - A)) / sin (angle (A - B) (C - B))"
    by (simp add: field_simps)
  hence "dist B C = 11 * (sqrt 3 / 2) / (1/2)"
    by (simp add: assms(1) sin_CAB sin_ABC)
  hence "dist B C = 11 * sqrt 3"
    by simp
  thus ?thesis .
qed