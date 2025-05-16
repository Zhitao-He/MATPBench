theory SquareArea
imports Complex_Main
begin
definition square_side :: "real" where
  "square_side = 10" 
definition A :: "complex" where "A = 0 + square_side * \<i>"
definition B :: "complex" where "B = square_side + square_side * \<i>"
definition C :: "complex" where "C = square_side + 0 * \<i>"
definition D :: "complex" where "D = 0 + 0 * \<i>"
definition E :: "complex" where "E = A + 2"
definition F :: "complex" where "F = E + (C - B)"
definition G :: "complex" where "G = F + (D - C)"
definition H :: "complex" where "H = G + (A - D)"
definition efgh_side :: "real" where
  "efgh_side = cmod (F - E)"
definition efgh_area :: "real" where
  "efgh_area = efgh_side^2"
theorem efgh_area_is_68:
  "efgh_area = 68"
  unfolding efgh_area_def efgh_side_def F_def E_def C_def B_def A_def D_def square_side_def
  by auto