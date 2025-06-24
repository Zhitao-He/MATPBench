theory Folded_Rectangle
  imports Complex_Main
begin
type_synonym point = "real × real"
locale rectangle_setup =
  fixes a b :: real
  assumes a_pos: "a > 0"
      and b_pos: "b > 0"
begin
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (a, 0)"
definition C :: point where "C = (a, b)"
definition D :: point where "D = (0, b)"
definition E :: point where "E = (8, 0)"
definition "a = 8 + 17"  
definition F :: point where "F = (a - 3, b)"
fixes y1 :: real
assumes y1_range: "0 < y1" "y1 < b"
definition B' :: point where "B' = (0, y1)"
definition reflect_over_line :: "point ⇒ point ⇒ point ⇒ point" where
  "reflect_over_line P Q R =
    (let
      (x0, y0) = P;
      (x1, y1) = Q;
      (x2, y2) = R;
      dx = x2 - x1;
      dy = y2 - y1;
      a = dy;
      b = -dx;
      c = dx * y1 - dy * x1;
      d = (a * x0 + b * y0 + c) / (a^2 + b^2)
     in
      (x0 - 2 * a * d, y0 - 2 * b * d)
    )"
definition "reflect_B = reflect_over_line B E F"
assumes fold_condition: "reflect_B = B'"
definition perimeter :: real where "perimeter = 2 * (a + b)"
end
end