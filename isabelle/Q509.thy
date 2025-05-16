theory AngleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
section "几何角度问题"
definition angle_between :: "real × real ⇒ real × real ⇒ real"
  where "angle_between v w = 
    let (vx, vy) = v; (wx, wy) = w in
    atan2 (vx * wy - vy * wx) (vx * wx + vy * wy)"
definition rad_to_deg :: "real ⇒ real"
  where "rad_to_deg r = r * (180 / pi)"
definition normalize_deg :: "real ⇒ real"
  where "normalize_deg d = d mod 360"
lemma angle_problem:
  fixes A B C D :: "real × real"
  assumes "∠ABD = 130" and "∠DBC = 95" and "∠CBA = x"
  shows "x = 135"
proof -
  have "∠ABD + ∠DBC + ∠CBA = 360"
    using assms by auto
  hence "130 + 95 + x = 360" 
    using assms by simp
  hence "x = 360 - 130 - 95" by simp
  thus "x = 135" by simp
qed