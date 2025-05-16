theory CylinderVolume
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem cylinder_height:
  fixes π :: real and h :: real
  assumes "π > 0"
  shows "(let r = 3 in
          let V = π * r^2 * h in
          V = 45 * π) ⟹ h = 5"
proof -
  assume "(let r = 3 in
           let V = π * r^2 * h in
           V = 45 * π)"
  then have "π * 3^2 * h = 45 * π" by simp
  then have "π * 9 * h = 45 * π" by simp
  then have "9 * h * π = 45 * π" by (simp add: mult.commute mult.left_commute)
  then have "9 * h = 45" using `π > 0` by (simp add: pos_divide_less_eq)
  then have "h = 45 / 9" by (simp add: field_simps)
  then show "h = 5" by simp
qed