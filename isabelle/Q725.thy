theory Triangle_Tangent_Problem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem triangle_tangent_15_16:
  fixes A B C :: "real × real"
  assumes "dist A B = sqrt 481"
    and "dist A C = 16"
    and "dist B C = 15"
    and "let u = (fst A - fst C, snd A - snd C);
         let v = (fst B - fst C, snd B - snd C) in
         fst u * fst v + snd u * snd v = 0"  
  have "cos (angle_at A B C) = (dist A B^2 + dist A C^2 - dist B C^2)/(2 * dist A B * dist A C)"
    using assms(1-3) by (simp add: cosine_law)
  have "cos (angle_at A B C) = (481 + 16^2 - 15^2)/(2 * sqrt 481 * 16)"
    using assms(1-3) by auto
  have "cos (angle_at A B C) = 16/sqrt 481"
    by (simp add: algebra_simps)
  have "sin (angle_at A B C) = 15/sqrt 481"
    using assms(1-4) by (simp add: sine_law)
  thus "tan (angle_at C A B) = 15/16"
    by (simp add: tan_def)
qed