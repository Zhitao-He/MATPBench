theory Geometry_Problem_Formalization
imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition length :: "point => point => real" where
  "length A B = dist A B"
definition perpendicular :: "point => point => point => point => bool" where
  "perpendicular A B C D = (A ~= B \<and> C ~= D \<and> ((B - A) \<cdot> (D - C) = (0::real)))"
definition parallel :: "point => point => point => point => bool" where
  "parallel A B C D = (A ~= B \<and> C ~= D \<and> (B - A) || (D - C))"
locale GeometricProblem =
  fixes P Q R S W X Y A :: point 
  assumes distinct_points:
    "R ~= P \<and> R ~= Q \<and> P ~= Q \<and> Y ~= S \<and> A ~= Y \<and> A ~= R \<and> Q ~= S"
  and ps_length: "length P S = 3"
  and ry_length: "length R Y = 5"
  and wx_length: "length W X = 10"
  and wy_length: "length W Y = 8"
  and xy_length: "length X Y = 6"
  and rp_parallel_xw: "parallel R P X W"       
  and rq_perp_pq: "perpendicular R Q P Q"     
  and wy_perp_xy: "perpendicular W Y X Y"     
  and ys_perp_ps: "perpendicular Y S P S"     
  and S_on_segment_PQ: "S on_segment P Q"
  and yaqs_is_parallelogram_AY_SQ: "Y - A = Q - S"
  and yaqs_is_parallelogram_YS_AQ: "S - Y = Q - A"
  and yar_perpendicular_RA: "perpendicular Y A R A" 
  and similarity_ratios_XWY_YRA_1: "length X W * length R A = length W Y * length Y R"
  and similarity_ratios_XWY_YRA_2: "length W Y * length A Y = length R A * length Y X"
end