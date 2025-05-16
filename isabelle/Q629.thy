theory QuadrilateralAngles
imports Main Real
begin
definition "angle_WZY = 4 * x"
definition "angle_XWZ = 3 * x"
definition "angle_YXW = x"
definition "angle_ZYX = 2 * x"
lemma quad_angles_sum: 
  "angle_WZY + angle_XWZ + angle_YXW + angle_ZYX = 360"
  unfolding angle_WZY_def angle_XWZ_def angle_YXW_def angle_ZYX_def
  by auto
lemma x_value: "x = 36"
  using quad_angles_sum
  unfolding angle_WZY_def angle_XWZ_def angle_YXW_def angle_ZYX_def
  by (simp add: algebra_simps)
theorem angle_ZYX_measure: "angle_ZYX = 72"
  using x_value
  unfolding angle_ZYX_def
  by simp