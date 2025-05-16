theory PyramidVolume
imports Main Complex_Main "HOL-Analysis.Analysis"
begin
definition cube_side :: "real" where
  "cube_side = 2"
definition cube_center :: "real × real × real" where
  "cube_center = (cube_side/2, cube_side/2, cube_side/2)"
definition pyramid_base_area :: "real" where
  "pyramid_base_area = cube_side^2"  
definition pyramid_height :: "real" where
  "pyramid_height = cube_side/2"  
definition pyramid_volume :: "real" where
  "pyramid_volume = (1/3) * pyramid_base_area * pyramid_height"
theorem pyramid_volume_is_four_thirds:
  "pyramid_volume = 4/3"
proof -
  have "pyramid_volume = (1/3) * pyramid_base_area * pyramid_height"
    by (simp add: pyramid_volume_def)
  also have "... = (1/3) * cube_side^2 * (cube_side/2)"
    by (simp add: pyramid_base_area_def pyramid_height_def)
  also have "... = (1/3) * 4 * 1"
    by (simp add: cube_side_def)
  also have "... = 4/3"
    by simp
  finally show ?thesis .
qed