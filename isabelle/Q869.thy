theory Angle_Calculation
  imports Complex_Main HOL.Real
begin
definition "isPerp" :: "real × real ⇒ real × real ⇒ bool" where
  "isPerp v w ⟷ (fst v * fst w + snd v * snd w = 0)"
definition "cosine_law" :: "real ⇒ real ⇒ real ⇒ real" where
  "cosine_law a b c = (a^2 + b^2 - c^2) / (2 * a * b)"
definition "rad_to_deg" :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / pi"
lemma angle_LKJ:
  assumes "KJ = 11"
    and "KL = 11"
    and "ML = 5.5"
    and "angle_KJM = 60" 
    and "isPerp (KM_vec) (LM_vec)" 
  shows "angle_LKJ = 60" 
proof -
  have "KJ = KL" using assms(1) assms(2) by simp
  have "angle_LKJ = angle_KLJ" 
    using `KJ = KL` by (simp add: angle_equality_in_isosceles)
  thus "angle_LKJ = 60" 
    using assms by (simp add: triangle_properties)
qed