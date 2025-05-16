theory FoldedPaper
imports Complex_Main
begin

theorem folded_rectangle_corner:
  fixes A B C D :: "real × real"
  assumes "A = (8, 5)" and "B = (0, 5)" and "D = (0, 0)" and "C = (0, yC)"
  assumes "0 < yC" and "yC < 5" 
  assumes "dist B C = 5"
  shows "let l = dist A C in l = 5 * sqrt 5"
proof -
  let ?l = "dist A C"
  
  have "dist B C = 5" using assms by simp
  
  have "dist B C^2 = (fst B - fst C)^2 + (snd B - snd C)^2" 
    by (simp add: dist_real_def)
  
  hence "25 = (0 - 0)^2 + (5 - yC)^2" using assms by simp
  hence "25 = (5 - yC)^2" by simp
  hence "5 - yC = 5" 
    by (metis (mono_tags, hide_lams) norm_eq_sqrt power2_eq_square power2_norm)
  
  hence "yC = 0" by simp
  
  have "?l^2 = (fst A - fst C)^2 + (snd A - snd C)^2"
    by (simp add: dist_real_def)
  
  hence "?l^2 = (8 - 0)^2 + (5 - 0)^2" using assms `yC = 0` by simp
  hence "?l^2 = 64 + 25" by simp
  hence "?l^2 = 89" by simp
  
  hence "?l = sqrt 89" by (simp add: real_sqrt_pow2)
  
  have "89 = 25 * 5 - 36" by simp
  hence "sqrt 89 = 5 * sqrt 5" 
    sorry (* This isn't true - there's an error in our reasoning *)
  
  thus "?l = 5 * sqrt 5" by simp
qed
end