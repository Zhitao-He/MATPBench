theory TangentCirclesTriangle
imports Complex_Main HOL.Real HOL.Transcendental
begin
record circle =
  center :: "real × real"
  radius :: real
definition tangent_circles_triangle :: "circle ⇒ circle ⇒ circle ⇒ (real × real) set" where
  "tangent_circles_triangle c1 c2 c3 = 
    {p. p = center c1 ∨ p = center c2 ∨ p = center c3}"
definition dist :: "real × real ⇒ real × real ⇒ real" where
  "dist p1 p2 = sqrt((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)"
definition circles_tangent :: "circle ⇒ circle ⇒ bool" where
  "circles_tangent c1 c2 = (dist (center c1) (center c2) = radius c1 + radius c2)"
definition triangle_area :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ real" where
  "triangle_area A B C = 
    abs(fst A * (snd B - snd C) + fst B * (snd C - snd A) + fst C * (snd A - snd B)) / 2"
theorem three_unit_circles_triangle_area:
  fixes c1 c2 c3 :: circle
  assumes "radius c1 = 1" "radius c2 = 1" "radius c3 = 1"
      and "circles_tangent c1 c2" "circles_tangent c2 c3" "circles_tangent c3 c1"
  shows "triangle_area (center c1) (center c2) (center c3) = 6 + 4 * sqrt 3"
  sorry 