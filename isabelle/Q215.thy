theory AngleMeasurement
imports Complex_Main
begin
type_synonym point = "real × real"
definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad d = d * (pi / 180)"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * (180 / pi)"
definition angle1 :: real where "angle1 = 36"  
definition angle3 :: real where "angle3 = 104" 
definition angle4 :: real where "angle4 = 40"  
theorem angle2_measure:
  "let angle2 = 68 in angle2 = 180 - (180 - angle3)"
proof -
  have "angle3 = 104" by (simp add: angle3_def)
  hence "180 - angle3 = 76" by simp
  hence "180 - (180 - angle3) = 68" by simp
  thus ?thesis by simp
qed
theorem angle2_measure_alternative:
  "68 = angle3 - 36"
proof -
  have "angle1 = 36" by (simp add: angle1_def)
  have "angle3 = 104" by (simp add: angle3_def)
  hence "angle3 - angle1 = 104 - 36" by simp
  thus ?thesis by simp
qed