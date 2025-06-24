theory Pentagon_Problem
  imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition angle_degrees :: "point => point => point => real" where
  "angle_degrees P Q R = (
    let vec1 = P - Q; vec2 = R - Q in
    if vec1 = (0::point) V vec2 = (0::point) then 0 
    else
      let cos_val = (vec1 inner vec2) / (norm vec1 * norm vec2) in
      let clamped_cos_val = max (-1) (min 1 cos_val) in
      acos clamped_cos_val * (180 / pi)
  )"
lemma inscribed_pentagon_angle_ABC:
  fixes O A B C D E :: point 
  fixes r :: real 
  assumes
    r_is_positive: "r > 0" and
    all_points_on_circle:
      "dist A O = r ∧ dist B O = r ∧ dist C O = r ∧ dist D O = r ∧ dist E O = r" and
    points_are_distinct: "distinct [A, B, C, D, E]" and
    angle_CAD_is_30: "angle_degrees C A D = 30" and
    angle_AED_is_115: "angle_degrees A E D = 115"
  shows
    "angle_degrees A B C = 100"
end