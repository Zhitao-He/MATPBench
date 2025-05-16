theory ShadedSectorAngle
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin

theorem shaded_sector_angle_20_percent:
  fixes r x :: real
  assumes "r > 0"
  assumes "0 < x" "x ≤ 360"
  defines "A_circle ≡ pi * (r^2)"
  defines "A_sector ≡ (x / 360) * A_circle"
  assumes "A_sector = (20 / 100) * A_circle"
  shows "x = 72"
proof -
  from assms(5) have "A_sector = 0.2 * A_circle" by simp
  with assms(6) have "(x / 360) * A_circle = 0.2 * A_circle" by simp
  hence "(x / 360) = 0.2" using `r > 0` assms(4) by (simp add: A_circle_def)
  hence "x = 0.2 * 360" by simp
  thus "x = 72" by simp
qed

end