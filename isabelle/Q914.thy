theory Quadrilateral_Perimeter
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale quadrilateral_problem =
  fixes A B C N :: "real^2"
  assumes AB_eq_3: "norm (B - A) = 3"
  and AB_eq_CN: "norm (A - B) = norm (C - N)"
  and AC_eq_BN: "norm (A - C) = norm (B - N)"
  and angle_ANB_62: "angle (A - N) (B - N) = 62 * pi / 180"
  and AC_perp_NC: "inner_product (A - C) (N - C) = 0"
  and NB_perp_AB: "inner_product (N - B) (A - B) = 0"
context quadrilateral_problem
begin
theorem perimeter_quadrilateral_ACNB:
  "norm (A - C) + norm (C - N) + norm (N - B) + norm (B - A) = 
   6 * tan (7 * pi / 45) + 6"
  oops