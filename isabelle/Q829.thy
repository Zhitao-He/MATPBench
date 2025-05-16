theory SineTriangleProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
lemma sin_ABC_value:
  fixes A B C :: "real × real"
  assumes "dist A B = 26"
          "dist A C = 24"
          "dist B C = 10"
          "((fst C - fst B) * (fst A - fst B) + (snd C - snd B) * (snd A - snd B)) = 0"
  shows "sin (angle B C A) = 12/13"
proof -
  (* BC perpendicular to AC means angle at C is 90 degrees *)
  (* In a right triangle, we can use the Pythagorean theorem and trigonometric relations *)
  (* Using the law of cosines to find the angle at B *)
  have "cos (angle A B C) = ((dist A B)^2 + (dist B C)^2 - (dist A C)^2) / (2 * (dist A B) * (dist B C))"
    using cosine_law [of A B C] by auto
  (* Compute the cosine value *)
  then have "cos (angle A B C) = (26^2 + 10^2 - 24^2) / (2 * 26 * 10)"
    using assms(1) assms(2) assms(3) by simp
  then have "cos (angle A B C) = (676 + 100 - 576) / 520"
    by simp
  then have "cos (angle A B C) = 200 / 520"
    by simp
  then have "cos (angle A B C) = 5/13"
    by simp
  (* Using the Pythagorean identity sin²θ + cos²θ = 1 *)
  then have "sin (angle A B C)^2 = 1 - (cos (angle A B C))^2"
    using sin2_cos2 by auto
  then have "sin (angle A B C)^2 = 1 - (5/13)^2"
    by simp
  then have "sin (angle A B C)^2 = 1 - 25/169"
    by simp
  then have "sin (angle A B C)^2 = 144/169"
    by simp
  then have "sin (angle A B C) = sqrt (144/169)"
    using sin_ge_zero angle_ge_0 angle_le_pi by force
  then have "sin (angle A B C) = 12/13"
    by simp
  thus ?thesis .
qed