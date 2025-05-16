theory FrustumSurfaceArea
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition radius_top :: "real" where "radius_top = 4"
definition radius_bottom :: "real" where "radius_bottom = 10"
definition height_frustum :: "real" where "height_frustum = 8"
definition slant_height :: "real" where 
  "slant_height = sqrt ((radius_bottom - radius_top)^2 + height_frustum^2)"
definition circumference :: "real ⇒ real" where
  "circumference r = 2 * pi * r"
definition lateral_area_formula :: "real ⇒ real ⇒ real ⇒ real" where
  "lateral_area_formula L r1 r2 = (L/2) * (circumference r1 + circumference r2)"
definition lateral_area_frustum :: "real" where
  "lateral_area_frustum = pi * slant_height * (radius_top + radius_bottom)"
definition circle_area :: "real ⇒ real" where
  "circle_area r = pi * r^2"
definition area_top :: "real" where "area_top = circle_area radius_top"
definition area_bottom :: "real" where "area_bottom = circle_area radius_bottom"
definition total_surface_area_frustum :: "real" where
  "total_surface_area_frustum = lateral_area_frustum + area_top + area_bottom"
theorem lateral_area_theorem:
  "lateral_area_frustum = lateral_area_formula slant_height radius_top radius_bottom"
proof -
  have "lateral_area_formula slant_height radius_top radius_bottom = 
        (slant_height/2) * (circumference radius_top + circumference radius_bottom)"
    by (simp add: lateral_area_formula_def)
  also have "... = (slant_height/2) * (2 * pi * radius_top + 2 * pi * radius_bottom)"
    by (simp add: circumference_def)
  also have "... = (slant_height/2) * (2 * pi * (radius_top + radius_bottom))"
    by (simp add: ring_distribs)
  also have "... = pi * slant_height * (radius_top + radius_bottom)"
    by (simp add: mult.commute mult.left_commute)
  also have "... = lateral_area_frustum"
    by (simp add: lateral_area_frustum_def)
  finally show ?thesis by simp
qed
theorem frustum_total_surface_area_256pi:
  "total_surface_area_frustum = 256 * pi"
proof -
  have "total_surface_area_frustum = lateral_area_frustum + area_top + area_bottom"
    by (simp add: total_surface_area_frustum_def)
  also have "... = pi * slant_height * (radius_top + radius_bottom) + 
                   pi * radius_top^2 + pi * radius_bottom^2"
    by (simp add: lateral_area_frustum_def area_top_def area_bottom_def circle_area_def)
  have slant_height_val: "slant_height = sqrt((10 - 4)^2 + 8^2)"
    by (simp add: radius_top_def radius_bottom_def height_frustum_def slant_height_def)
  also have "... = sqrt(36 + 64)"
    by simp
  also have "... = sqrt 100"
    by simp
  also have "... = 10"
    by simp
  finally have slant_height_is_10: "slant_height = 10" .
  have "pi * slant_height * (radius_top + radius_bottom) + pi * radius_top^2 + pi * radius_bottom^2 = 
        pi * 10 * (4 + 10) + pi * 4^2 + pi * 10^2"
    by (simp add: radius_top_def radius_bottom_def slant_height_is_10)
  also have "... = pi * 10 * 14 + pi * 16 + pi * 100"
    by simp
  also have "... = pi * 140 + pi * 116"
    by simp
  also have "... = pi * 256"
    by simp
  also have "... = 256 * pi"
    by (simp add: mult.commute)
  finally show ?thesis .
qed