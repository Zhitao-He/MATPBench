theory SphereInCone
  imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma sphere_inscribed_in_cone_volume_ratio:
  fixes h r :: real
  assumes "h = 4" "r = 3"
  defines "V_cone ≡ (1/3) * pi * r^2 * h"
  defines "r_sphere ≡ (r * h) / (sqrt((r^2) + (h^2)) + r)"
  defines "V_sphere ≡ (4/3) * pi * r_sphere^3"
  shows "V_sphere / V_cone = 3/8"
proof -
  have "r_sphere = 1"
    unfolding r_sphere_def using assms
    by (simp add: algebra_simps power2_eq_square)
  then have "V_sphere = (4/3) * pi"
    unfolding V_sphere_def
    by simp
  moreover have "V_cone = (1/3) * pi * 9 * 4"
    unfolding V_cone_def using assms
    by (simp add: power2_eq_square)
  moreover have "V_cone = (12 * pi)"
    using calculation
    by simp
  ultimately show ?thesis
    by simp
qed