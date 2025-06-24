theory PentagonArea
  imports Main
begin
type_synonym point = "real × real"
definition x_coord :: "point ⇒ real" where "x_coord p = fst p"
definition y_coord :: "point ⇒ real" where "y_coord p = snd p"
definition dist_sq :: "point ⇒ point ⇒ real" where
  "dist_sq p1 p2 = (x_coord p2 - x_coord p1) * (x_coord p2 - x_coord p1) +
                   (y_coord p2 - y_coord p1) * (y_coord p2 - y_coord p1)"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt(dist_sq p1 p2)"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle p1 p2 p3 =
     (1/2 :: real) * abs(x_coord p1 * (y_coord p2 - y_coord p3) +
                         x_coord p2 * (y_coord p3 - y_coord p1) +
                         x_coord p3 * (y_coord p1 - y_coord p2))"
definition area_rectangle_axis_aligned :: "point ⇒ point ⇒ real" where
  "area_rectangle_axis_aligned p_bottom_left p_top_right =
     abs((x_coord p_top_right - x_coord p_bottom_left) * (y_coord p_top_right - y_coord p_bottom_left))"
definition P1 :: point where "P1 = (0, 0)"
definition P2 :: point where "P2 = (8, 0)"
definition P3 :: point where "P3 = (8, 18)"
definition P4 :: point where "P4 = (56/25, 492/25)"
definition P5 :: point where "P5 = (0, 12)"
definition F_aux :: point where "F_aux = (x_coord P2, y_coord P5)" 
definition area_R1 :: real where
  "area_R1 = area_rectangle_axis_aligned P1 F_aux" 
definition area_T1 :: real where
  "area_T1 = area_triangle P5 F_aux P4" 
definition area_T2 :: real where
  "area_T2 = area_triangle F_aux P3 P4" 
definition total_area_pentagon :: real where
  "total_area_pentagon = area_R1 + area_T1 + area_T2" 
theorem pentagon_area_is_144:
  "total_area_pentagon = (144::real)"
sorry 
end