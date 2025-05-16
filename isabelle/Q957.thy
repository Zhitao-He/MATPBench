theory GeometryTheorem
imports Complex_Main HOL.Real
begin
type_synonym point = "real × real"
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle O P ≡ let (ox, oy) = O; (px, py) = P in
    (px - ox)^2 + (py - oy)^2 = (dist O P)^2"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ≡ let (ax, ay) = A; (bx, by) = B; (cx, cy) = C in
    (by - ay) * (cx - ax) = (cy - ay) * (bx - ax)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = (fst A + fst B) / 2, (snd A + snd B) / 2"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between A B C ≡ collinear A B C ∧ 
    dist A B + dist B C = dist A C"
type_synonym line = "point × point"
definition Line :: "point ⇒ point ⇒ line" where
  "Line A B = (A, B)"
definition parallel :: "line ⇒ line ⇒ bool" where
  "parallel l1 l2 ≡ let (A, B) = l1; (C, D) = l2;
    (ax, ay) = A; (bx, by) = B; (cx, cy) = C; (dx, dy) = D in
    (by - ay) * (dx - cx) = (dy - cy) * (bx - ax)"
definition perpendicular :: "line ⇒ line ⇒ bool" where
  "perpendicular l1 l2 ≡ let (A, B) = l1; (C, D) = l2;
    (ax, ay) = A; (bx, by) = B; (cx, cy) = C; (dx, dy) = D in
    (bx - ax) * (dx - cx) + (by - ay) * (dy - cy) = 0"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 0" 
theorem geometry_problem_angle_equality:
  fixes O A B C D E F G :: point
  assumes "on_circle O A" "on_circle O B" "on_circle O C"
    and "A ≠ B" "B ≠ C" "C ≠ A"
    and "D = midpoint B C"
    and "collinear A D E" "on_circle O E" "E ≠ A"
    and "between A D E"
    and "on_circle O F" "F ≠ E"
    and "parallel (Line E F) (Line B C)"
    and "perpendicular (Line C G) (Line A C)" 
    and "collinear G A E"
    and "between G A E"
    and "G ≠ C" "G ≠ A"
  shows "angle A G C = angle F G C"
  sorry 