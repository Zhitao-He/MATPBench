theory CircleAngleTheorem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
text ‹Proof: Points A, B, and C are placed on a circle centered at O.
      If AC = BC and ∠OAC = 18°, then the number of degrees in ∠AOB is 72.›
(* Define points as 2D vectors *)
type_synonym point = "real × real"
(* Distance between two points *)
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt(((fst p - fst q)^2) + ((snd p - snd q)^2))"
(* Angle in degrees between three points *)
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg A B C = arccos (
    ((fst A - fst B) * (fst C - fst B) + (snd A - snd B) * (snd C - snd B)) /
    (dist B A * dist B C)
  ) * (180 / pi)"
(* A point is on a circle with center O if distance from O is constant *)
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle O P = (∃r. r > 0 ∧ dist O P = r)"
theorem circle_angle_AOB_72:
  fixes O A B C :: point
  assumes "on_circle O A" "on_circle O B" "on_circle O C"
    and "dist A C = dist B C"
    and "angle_deg O A C = 18"
  shows "angle_deg A O B = 72"
  sorry