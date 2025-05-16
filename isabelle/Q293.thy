theory Cone_Cylinder_Volume
  imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem cone_inside_cylinder_volume:
  "∃r h. 
    r > 0 ∧ h > 0 ∧
    72 * pi = pi * r^2 * h ∧
    let V_cone = (1/3) * pi * r^2 * h in
    let V_space = 72 * pi - V_cone in
    V_space = 48 * pi"
proof -
  have "72 * pi = pi * r^2 * h" if "r > 0" "h > 0" "r^2 * h = 72" for r h
    by (simp add: that mult.assoc)
  moreover have "let V_cone = (1/3) * pi * r^2 * h; V_space = 72 * pi - V_cone in V_space = 48 * pi" 
    if "r > 0" "h > 0" "r^2 * h = 72" for r h
  proof -
    let ?V_cone = "(1/3) * pi * r^2 * h"
    let ?V_space = "72 * pi - ?V_cone"
    have "?V_cone = (1/3) * pi * 72" using that(3) by simp
    also have "... = 24 * pi" by simp
    finally have "?V_cone = 24 * pi" .
    thus "?V_space = 48 * pi" by simp
  qed
  ultimately show ?thesis
    by (intro exI[of _ "6"] exI[of _ "2"]) auto
qed
  