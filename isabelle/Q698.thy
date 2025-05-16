theory GeometryProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p center r = (dist p center = r)"
locale circle_problem =
  fixes C D N :: point
  assumes center: "N is the center of the circle"
  assumes CN_length: "dist C N = 8"
theorem DN_equals_8:
  assumes "C is on the circle with center N"
  assumes "D is on the circle with center N"
  shows "dist D N = 8"
proof -
  from assms(1) have "dist C N = dist D N" 
    by (simp add: on_circle_def)
  with CN_length show "dist D N = 8" by simp
qed