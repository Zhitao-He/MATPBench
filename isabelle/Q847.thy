theory GeometryProblem
  imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition area_triangle_base_height :: "real => real => real" where
  "area_triangle_base_height base height = (1/2) * base * height"
theorem sum_of_triangle_areas_is_50:
  fixes A B C D E N :: point 
  assumes length_BA: "dist B A = 5"
  and length_CB: "dist C B = 8"
  and length_CD: "dist C D = 12"
  and length_NE: "dist N E = 5"
  and perpendicular_BA_DA: "orthogonal (B - A) (D - A)" 
  and perpendicular_NE_BE: "orthogonal (N - E) (B - E)" 
  and A_on_segment_CD: "dist C A + dist A D = dist C D"
  and E_on_segment_CB: "dist C E + dist E B = dist C B"
  shows "area_triangle_base_height (dist C B) (dist N E) + area_triangle_base_height (dist C D) (dist B A) = 50"
  sorry
end