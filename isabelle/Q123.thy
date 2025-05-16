theory SquareAndCircles
  imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem square_and_two_circles_radius:
  fixes a b :: real
  assumes "∀ r_big r_small. 
    0 < r_big ∧ 0 < r_small ⟶
    (let s = 10 in
     r_big = s * (1 + 1 / (sqrt 2 - 1)) ∧
     r_small = a - b * sqrt 2 ∧
     (s - r_small)^2 + (s - r_small)^2 = (r_big - r_small)^2)"
  shows "a + b = 50"
begin
  