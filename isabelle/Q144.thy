theory PerpedicularAngle
imports Complex_Main HOL.Real "HOL-Analysis.Euclidean_Space"
begin

section "Perpendicular angle proof"

(* Define points in the Euclidean plane *)
locale perpendicular_angle =
  fixes A :: "real^2" and O :: "real^2" and B :: "real^2" and C :: "real^2"
  assumes AOB_collinear: "collinear {A, O, B}"
  assumes OC_perpendicular: "angle A O C = pi/2"
  
(* Define the angle x *)
definition x :: real where
  "x = angle A O C"

(* The main theorem: x is 90 degrees *)
theorem angle_x_is_90:
  shows "x = pi/2"
  unfolding x_def
  using OC_perpendicular
  by simp

end