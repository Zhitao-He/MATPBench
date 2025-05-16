theory TriangleTheorem
imports Complex_Main HOL.Real Real_Vector_Spaces
begin
theorem triangle_y_value:
  fixes A B C :: "real × real"
  assumes "dist A B = 12"         (* AB = 12 *)
  assumes "angle B A C = pi/6"    (* ∠BAC = 30° *)
  assumes "angle A C B = pi/3"    (* ∠ACB = 60° *)
  assumes "angle A B C = pi/2"    (* ∠ABC = 90° (CB⊥AB) *)
  shows "dist A C = 8 * sqrt 3"   (* AC = y = 8√3 *)
proof -
  have "sin (angle B A C) / dist B C = sin (angle B C A) / dist A B"
    by (rule sine_law)
  hence "sin (pi/6) / dist B C = sin (pi/2 - pi/3) / 12"
    using assms(1) assms(2) assms(4) by simp
  hence "1/2 / dist B C = sin (pi/6) / 12"
    using assms(3) by (simp add: sin_60 sin_30)
  moreover have "sin (angle A B C) / dist A C = sin (angle A C B) / dist A B"
    by (rule sine_law)
  hence "sin (pi/2) / dist A C = sin (pi/3) / 12"
    using assms(1) assms(3) assms(4) by simp
  hence "1 / dist A C = sqrt 3 / 2 / 12"
    by (simp add: sin_90 sin_60)
  hence "dist A C = 12 * 2 / sqrt 3"
    by (simp add: field_simps)
  also have "12 * 2 / sqrt 3 = 24 / sqrt 3"
    by simp
  also have "... = 24 * sqrt 3 / 3"
    by (simp add: divide_real_def real_sqrt_divide)
  also have "... = 8 * sqrt 3"
    by simp
  finally show "dist A C = 8 * sqrt 3" .
qed