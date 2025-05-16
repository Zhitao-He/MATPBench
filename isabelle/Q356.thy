theory SquareShading
imports Complex_Main
begin
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (4, 0)"
definition C :: "real × real" where "C = (4, 4)"
definition D :: "real × real" where "D = (0, 4)"
definition mAB :: "real × real" where "mAB = (2, 0)"
definition mBC :: "real × real" where "mBC = (4, 2)"
definition mCD :: "real × real" where "mCD = (2, 4)"
definition mDA :: "real × real" where "mDA = (0, 2)"
definition area_square :: "real ⇒ real" where
  "area_square side = side * side"
theorem shaded_area_square_midpoints:
  "area_square 4 - area_square 2 = 4"
  by (simp add: area_square_def)