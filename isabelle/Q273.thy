theory CompositeVolume
imports Complex_Main Real
begin
theorem composite_solid_volume:
  fixes L W H :: real
  assumes "L = 15" and "W = 9" and "H = 8"
  defines "prism_volume ≡ L * W * H"
  defines "pyramid_volume ≡ (1/3) * L * W * H"
  defines "composite_volume ≡ prism_volume - pyramid_volume"
  shows "composite_volume = 720"
begin
  have "composite_volume = prism_volume - pyramid_volume" 
    by (simp add: composite_volume_def)
  also have "... = L * W * H - (1/3) * L * W * H" 
    by (simp add: prism_volume_def pyramid_volume_def)
  also have "... = L * W * H * (1 - 1/3)" by (simp add: algebra_simps)
  also have "... = L * W * H * (2/3)" by simp
  also have "... = (L * W * H) * (2/3)" by (simp add: mult_ac)
  also have "... = 15 * 9 * 8 * (2/3)" using assms by simp
  also have "... = 1080 * (2/3)" by simp
  also have "... = 720" by simp
  finally show ?thesis .