theory TruncatedCone
  imports Complex_Main "HOL-Analysis.Analysis"
begin
definition frustum_volume :: "real ⇒ real ⇒ real ⇒ real" where
  "frustum_volume r1 r2 h = (1/3) * pi * h * (r1^2 + r1*r2 + r2^2)"
theorem truncated_cone_volume:
  "frustum_volume 8 4 6 = 224 * pi"
proof -
  have "frustum_volume 8 4 6 = (1/3) * pi * 6 * (8^2 + 8*4 + 4^2)"
    by (simp add: frustum_volume_def)
  also have "... = (1/3) * pi * 6 * (64 + 32 + 16)"
    by (simp)
  also have "... = (1/3) * pi * 6 * 112"
    by (simp)
  also have "... = (1/3) * 6 * 112 * pi"
    by (simp)
  also have "... = 2 * 112 * pi"
    by (simp)
  also have "... = 224 * pi"
    by (simp)
  finally show ?thesis .
qed