theory GeometryProblem
  imports Main "HOL-Library.Sqrt"
begin
type_synonym point = "real × real"
fun dist_sq :: "point ⇒ point ⇒ real" where
  "dist_sq (x1, y1) (x2, y2) = (x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1)"
fun dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt (dist_sq p1 p2)"
definition L_sq :: real where
  "L_sq = 4.0" 
definition R_sec :: real where
  "R_sec = 4.0" 
definition O_sec :: point where
  "O_sec = (0.0, 0.0)" 
definition small_circle_center :: "real ⇒ point" where
  "small_circle_center r = (L_sq - r, L_sq - r)"
definition small_circle_radius_constraint :: "real ⇒ bool" where
  "small_circle_radius_constraint r = (
    r > 0.0 ∧
    r ≤ L_sq / 2.0 ∧
    dist O_sec (small_circle_center r) = R_sec + r
  )"
end