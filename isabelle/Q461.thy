theory SquaresShading
imports Main Real
begin
definition big_square_side :: "real" where
  "big_square_side = 2"
definition small_square_side :: "real" where
  "small_square_side = 1"
definition big_square_area :: "real" where
  "big_square_area = big_square_side^2"
definition small_square_area :: "real" where
  "small_square_area = small_square_side^2"
definition shaded_area :: "real" where
  "shaded_area = 1"
lemma shaded_area_is_one:
  "shaded_area = 1"
  by (simp add: shaded_area_def)