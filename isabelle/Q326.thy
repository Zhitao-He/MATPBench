theory Circle_Area
  imports Complex_Main
begin
definition center :: "real × real" where
  "center = (3, 1)"
definition point_on_circle :: "real × real" where
  "point_on_circle = (8, 1)"
definition radius :: real where
  "radius = sqrt ((fst point_on_circle - fst center)^2 + (snd point_on_circle - snd center)^2)"
definition circle_area :: real where
  "circle_area = pi * radius^2"
lemma radius_val: "radius = 5"
  unfolding radius_def center_def point_on_circle_def
  by simp
lemma circle_area_val: "circle_area = 25 * pi"
  unfolding circle_area_def radius_val by simp
end