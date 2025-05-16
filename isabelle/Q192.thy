theory InscribedAngleProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale inscribed_angle_problem =
  fixes O A B C :: "real^2"
  assumes on_circle: "dist A O = dist B O" "dist B O = dist C O" "dist C O = dist A O"
  and distinct_points: "A ≠ B" "B ≠ C" "C ≠ A"
  and center_distinct: "O ≠ A" "O ≠ B" "O ≠ C"
  and angle_OAB: "angle (O - A) (B - A) = 35 * pi / 180"
definition angle :: "real^2 ⇒ real^2 ⇒ real"
  where "angle v w = (if v = 0 ∨ w = 0 then 0 
                      else let θ = arccos((v•w)/(norm v * norm w)) in
                           if det2 v w ≥ 0 then θ else 2*pi - θ)"
definition det2 :: "real^2 ⇒ real^2 ⇒ real"
  where "det2 v w = v$1 * w$2 - v$2 * w$1"
theorem inscribed_angle_deg_ACB:
  assumes "on_circle O A" "on_circle O B" "on_circle O C"
      and "A ≠ B" "B ≠ C" "C ≠ A"
      and "O ≠ A" "O ≠ B" "O ≠ C"
  shows "angle (A - C) (B - C) = 55 * pi / 180"
  sorry