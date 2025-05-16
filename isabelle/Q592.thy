theory AngleXWY
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = norm (p - q)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ (∃t. C - A = t *R (B - A))"
definition angle_at :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_at B A C = 
    (if A = B ∨ A = C then 0
     else let 
       u = (B - A) /R norm (B - A);
       v = (C - A) /R norm (C - A)
     in acos (u ⋅ v))"
definition side_WX :: "point ⇒ point ⇒ real ⇒ bool" where
  "side_WX W X x ⟷ dist W X = 9 * x"
definition side_XY :: "point ⇒ point ⇒ real ⇒ bool" where
  "side_XY X Y x ⟷ dist X Y = 4 * x + 5"
definition side_WY :: "point ⇒ point ⇒ real ⇒ bool" where
  "side_WY W Y x ⟷ dist W Y = 6 * x + 3"
definition triangle_WXY :: "point ⇒ point ⇒ point ⇒ bool" where
  "triangle_WXY W X Y ⟷ ¬ collinear W X Y"
definition PI :: real where
  "PI = pi"
theorem measure_of_angle_XWY_60_degrees:
  "∃ W X Y x::real.
    x > 0 ∧
    triangle_WXY W X Y ∧
    side_WX W X x ∧
    side_XY X Y x ∧
    side_WY W Y x ∧
    angle_at W X Y = PI / 3"