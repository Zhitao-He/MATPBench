theory FoldedPaper
  imports "HOL-Library.Real" "HOL-Analysis.Sqrt"
begin
type_synonym point = "real × real"
fun dist_sq :: "point ⇒ point ⇒ real" where
  "dist_sq (x1, y1) (x2, y2) = (x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1)"
fun dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt (dist_sq p1 p2)"
definition L :: real where "L = 8" 
definition H :: real where "H = 8" 
definition BC_dist :: real where "BC_dist = 5" 
definition A_corner :: point where
  "A_corner = (L, H)"
definition B_x :: real where
  "B_x = L - BC_dist"
definition B_point :: point where
  "B_point = (B_x, H)"
definition C_y :: real where
  "C_y = H - sqrt(BC_dist*BC_dist - B_x*B_x)"
definition C_point :: point where
  "C_point = (0, C_y)"
definition Q_y :: real where
  "Q_y = H - (L*L + (H - C_y)*(H - C_y)) / (2 * (H - C_y))"
definition Q_point :: point where
  "Q_point = (L, Q_y)"
definition fold_length_l :: real where
  "fold_length_l = dist B_point Q_point"
end