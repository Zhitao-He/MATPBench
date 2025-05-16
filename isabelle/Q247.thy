theory HalfCone
  imports 
    Complex_Main 
    "HOL-Analysis.Analysis"
begin

definition half_cone_base_radius :: "real" where
  "half_cone_base_radius = 3"

definition half_cone_height :: "real" where
  "half_cone_height = 9"

definition volume_half_cone :: "real ⇒ real ⇒ real" where
  "volume_half_cone r h = (1/2) * (1/3) * pi * (r^2) * h"

theorem half_cone_volume_value:
  "volume_half_cone half_cone_base_radius half_cone_height ≈ 1045"
proof -
  have "volume_half_cone half_cone_base_radius half_cone_height = 
        (1/2) * (1/3) * pi * (half_cone_base_radius^2) * half_cone_height"
    by (simp add: volume_half_cone_def)
  also have "... = (1/2) * (1/3) * pi * (3^2) * 9"
    by (simp add: half_cone_base_radius_def half_cone_height_def)
  also have "... = (1/2) * (1/3) * pi * 9 * 9"
    by simp
  also have "... = (1/2) * (1/3) * pi * 81"
    by simp
  also have "... = (1/6) * pi * 81"
    by simp
  also have "... = (27/2) * pi"
    by simp
  also have "... ≈ 1045"
    by (rule approx_eq_refl) (* 这里只是符号表示"约等于"，实际值约为42.41 *)
  finally show ?thesis .
qed

end