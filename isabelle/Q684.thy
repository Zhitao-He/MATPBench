theory RightTriangle
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
lemma triangle_x_sqrt231:
  fixes A B C :: "real^2"
  assumes "norm (B - A) = 16"
      and "norm (C - A) = 5"
      and "((C - A) • (C - B)) = 0" (* BC perpendicular to AC *)
    shows "norm (C - B) = sqrt 231"
proof -
  (* BC is perpendicular to AC means the angle at C is 90 degrees *)
  from assms(3) have "((C - A) • (C - B)) = 0" by assumption
  (* Using the Pythagorean theorem in vector form *)
  have "norm (C - B)^2 = norm (C - A)^2 + norm (B - A)^2 - 2 * ((C - A) • (B - A))" 
    by (simp add: norm_diff_pow2)
  (* Calculate the dot product (C-A)•(B-A) *)
  have "((C - A) • (B - A)) = ((C - A) • (B - C + C - A))"
    by (simp add: algebra_simps)
  also have "... = ((C - A) • (B - C)) + ((C - A) • (C - A))"
    by (simp add: inner_simpl_left)
  also have "... = -((C - A) • (C - B)) + norm(C - A)^2"
    by (simp add: inner_commute algebra_simps power2_norm_eq_inner)
  also have "... = 0 + norm(C - A)^2"
    using assms(3) by simp
  also have "... = norm(C - A)^2"
    by simp
  finally have "((C - A) • (B - A)) = norm(C - A)^2" .
  (* Substitute back into the main equation *)
  have "norm (C - B)^2 = norm (C - A)^2 + norm (B - A)^2 - 2 * norm(C - A)^2"
    using ‹((C - A) • (B - A)) = norm(C - A)^2› by simp
  also have "... = norm (B - A)^2 - norm (C - A)^2"
    by simp
  also have "... = 16^2 - 5^2"
    using assms(1) assms(2) by (simp add: power2_eq_square)
  also have "... = 256 - 25"
    by simp
  also have "... = 231"
    by simp
  finally have "norm (C - B)^2 = 231" .
  thus "norm (C - B) = sqrt 231"
    by (simp add: real_sqrt_unique)
qed