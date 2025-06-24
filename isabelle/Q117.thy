theory Rectangle_Intersection_Area
  imports Complex_Main
begin
type_synonym point = "real × real"
definition rectangle :: "point ⇒ point ⇒ point set" where
  "rectangle p1 p2 = { (x, y). fst p1 ≤ x ∧ x ≤ fst p2 ∧ snd p1 ≤ y ∧ y ≤ snd p2 }"
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (0, 3)"
definition C :: point where "C = (11, 3)"
definition D :: point where "D = (11, 0)"
definition rect_ABCD :: "point set" where
  "rect_ABCD = rectangle A C"
definition F :: point where "F = (0, 7)"
definition E :: point where "E = (9, 0)"
definition rect_AECF :: "point set" where
  "rect_AECF = rectangle A C' "
    where "C' = (9, 7)"
definition intersection_area :: "real" where
  "intersection_area = 
    (let x1 = max (fst A) (fst A);
         y1 = max (snd A) (snd A);
         x2 = min (fst C) (fst C');
         y2 = min (snd C) (snd C')
     in if x2 > x1 ∧ y2 > y1 then (x2 - x1) * (y2 - y1) else 0)"
  where "C' = (9, 7)"
end