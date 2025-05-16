theory ValueOfX
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

section "Finding the value of x in a geometric diagram"

locale geometric_problem =
  fixes A B C D E :: "real^2"
  fixes x :: real
  assumes collinear: "collinear {A, E, B}"
    and perp1: "orthogonal (A - C) (E - A)" 
    and perp2: "orthogonal (E - D) (B - E)"
    and cong_segments: "norm (A - C) = norm (D - B)" 
    and AE_length: "norm (A - E) = 2*x + 1"
    and EB_length: "norm (E - B) = 3*x - 5"

theorem (in geometric_problem) value_of_x: "x = 6"
  oops

end