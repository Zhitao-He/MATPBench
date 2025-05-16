theory RightTriangle
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
lemma value_of_x_in_right_triangle:
  "∃A B C :: real^2. 
    norm (C - A) = 16 ∧ 
    norm (C - B) = 30 ∧ 
    angle (A - C) (B - C) = pi/2 ∧
    norm (B - A) = 34"
sorry