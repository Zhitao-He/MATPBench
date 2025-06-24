theory Geometry_Problem
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
consts A B C D :: point
axioms
  angle_DAB_is_right: "(D - A) \<cdot> (B - A) = 0" and
  sides_AD_AB_equal: "dist A D = dist A B" and
  AD_length_positive: "dist A D > 0" and
  angle_BDC_is_right: "(B - D) \<cdot> (C - D) = 0" and
  sides_BD_CD_equal: "dist B D = dist C D" and
  BD_length_positive: "dist B D > 0" and
  length_BC_is_2: "dist B C = 2"
definition perimeter_ABCD :: real where
  "perimeter_ABCD = dist A B + dist B C + dist C D + dist D A"
theorem perimeter_calculation:
  "perimeter_ABCD = 4 + sqrt 2"
  sorry 
end