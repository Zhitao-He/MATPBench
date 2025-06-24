theory Geometry_EGD_30
  imports Main
begin
locale points =
  fixes A B C D E G :: "'a"
locale circle_geom = points +
  assumes on_circle_A: "dist G A = dist G B"
    and on_circle_B: "dist G B = dist G C"
    and on_circle_C: "dist G C = dist G D"
    and on_circle_D: "dist G D = dist G E"
    and on_circle_E: "dist G E = dist G A"
definition angle :: "'a ⇒ 'a ⇒ 'a ⇒ real" where
  "angle X Y Z = undefined"  
locale problem_setup = circle_geom +
  assumes angle_AGC_60: "angle A G C = 60"
    and DG_perp_AG: ""
theorem (in problem_setup) angle_EGD_30:
  shows "angle E G D = 30"
  sorry
end