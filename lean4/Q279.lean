import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

theorem sum_of_squares_from_geometry (x y : ℝ)
  (h1 : (Real.sqrt 3)^2 + (Real.sqrt 3)^2 = x^2 + y^2)
  (h2 : (Real.sqrt 10)^2 + (Real.sqrt 7)^2 = x^2 + y^2)
  (h3 : (2 : ℝ)^2 + (Real.sqrt 6)^2 = x^2 + y^2) :
  x^2 + y^2 = 21 :=
  by sorry