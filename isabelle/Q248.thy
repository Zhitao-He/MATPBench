theory SphereVolume
imports Complex_Main "HOL-Analysis.Analysis"
begin
text ‹Finding the volume of a sphere with radius 3 cm.›
definition sphere_volume :: "real ⇒ real" where
  "sphere_volume r = (4/3) * pi * (r^3)"
theorem sphere_volume_3cm:
  "sphere_volume 3 ≈ 113.10"
proof -
  have "sphere_volume 3 = (4/3) * pi * 27"
    by (simp add: sphere_volume_def power3_eq_cube)
  also have "... = (4/3) * pi * 27"
    by simp
  also have "... ≈ 113.10"
    by (approximation 2)
  finally show ?thesis .
qed