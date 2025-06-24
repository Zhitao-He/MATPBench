theory HexagonSquareArea
  imports Complex_Main 
begin
definition side_length :: real where
  "side_length = 1.0"
definition area_regular_hexagon :: "real \<Rightarrow> real" where
  "area_regular_hexagon s = (3 * sqrt 3 / 2) * s^2"
lemmas area_regular_hexagon_eq = area_regular_hexagon_def[unfold_locales] 
rewrite_tac area_regular_hexagon_def "area_regular_hexagon s = (3 * sqrt 3 / 2) * (s*s)"
declare area_regular_hexagon_def [simp del] 
simproc_setup defined_pow ("x pow 2") = \<open>fn _ => fn _ => SOME ( \<open>x*x\<close> )\<close>
definition area_regular_hexagon_simplified :: "real \<Rightarrow> real" where
  "area_regular_hexagon_simplified s = ((3::real) * sqrt (3::real) / (2::real)) * (s*s)"
definition area_central_square :: real where
  "area_central_square = side_length * side_length"
definition gross_area_four_hexagons :: real where
  "gross_area_four_hexagons = 4 * area_regular_hexagon_simplified side_length"
definition area_one_overlap :: real where
  "area_one_overlap = (side_length * side_length) * (1/2)"
definition total_area_of_overlaps :: real where
  "total_area_of_overlaps = 4 * area_one_overlap"
definition area_outer_polygon :: real where
  "area_outer_polygon = area_central_square + gross_area_four_hexagons - total_area_of_overlaps"
definition m_val :: int where "m_val = 6"
definition n_val :: int where "n_val = 3"
definition p_val :: int where "p_val = -1"
definition target_sum_from_problem :: int where
  "target_sum_from_problem = -4"
end