theory Geometry_Problem_Formalization
imports Main
begin
typedecl point
consts A B C D E F G H :: point
type_synonym angle_measure = real
theorem find_value_of_y:
  fixes x :: angle_measure
  fixes y :: angle_measure
  fixes angle_GBD_measure :: angle_measure
  assumes cond1_supplementary_BGA_AGE: "x + 55 = 180"
  assumes cond2_parallel_implies_supplementary: "x + angle_GBD_measure = 180"
  assumes cond3_supplementary_GBD_GBH: "angle_GBD_measure + y = 180"
shows "y = (125 :: angle_measure)"
sorry
end