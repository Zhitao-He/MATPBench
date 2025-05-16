theory SumOfSquares
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem sum_of_squares_from_geometry:
  fixes x y :: real
  assumes "sqrt 3 ^ 2 + sqrt 3 ^ 2 = x^2 + y^2"
    and "sqrt 10 ^ 2 + sqrt 7 ^ 2 = x^2 + y^2"
    and "2 ^ 2 + sqrt 6 ^ 2 = x^2 + y^2"
  shows "x^2 + y^2 = 21"