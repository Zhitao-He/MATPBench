theory Sector_Area
  imports Complex_Main HOL.Real
begin
definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad d = d * (pi / 180)"
definition area_of_sector :: "real ⇒ real ⇒ real" where
  "area_of_sector r angle = (1/2) * r^2 * angle"
definition K :: "real × real" where "K = (0, 0)"  
definition L :: "real × real" where "L = (6, 0)"  
definition KL :: real where "KL = 6"
definition angle_JKL :: real where "angle_JKL = deg_to_rad 148"
theorem area_sector_KLJ:
  "area_of_sector KL angle_JKL = (74 * pi) / 5"
proof -
  have "angle_JKL = deg_to_rad 148" by (simp add: angle_JKL_def)
  also have "... = 148 * (pi / 180)" by (simp add: deg_to_rad_def)
  also have "... = (148 * pi) / 180" by simp
  finally have angle_val: "angle_JKL = (148 * pi) / 180" .
  have "area_of_sector KL angle_JKL = (1/2) * KL^2 * angle_JKL" 
    by (simp add: area_of_sector_def)
  also have "... = (1/2) * 6^2 * ((148 * pi) / 180)" 
    by (simp add: KL_def angle_val)
  also have "... = (1/2) * 36 * ((148 * pi) / 180)" by simp
  also have "... = 18 * ((148 * pi) / 180)" by simp
  also have "... = (18 * 148 * pi) / 180" by simp
  also have "... = (2664 * pi) / 180" by simp
  also have "... = (74 * 36 * pi) / 180" by simp
  also have "... = (74 * pi) / 5" by simp
  finally show ?thesis .
qed