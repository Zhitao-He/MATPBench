theory Seven_Circles_Shaded_Area
  imports Complex_Main
begin
consts r :: real
definition small_circle_area :: real where
  "small_circle_area = pi * r^2"
axiomatization where
  small_circle_area_is_one: "small_circle_area = 1"
definition big_circle_radius :: real where
  "big_circle_radius = 3 * r"
definition big_circle_area :: real where
  "big_circle_area = pi * (big_circle_radius)^2"
definition shaded_area :: real where
  "shaded_area = big_circle_area - 7 * small_circle_area"
definition shaded_area_ratio :: real where
  "shaded_area_ratio = shaded_area / small_circle_area"
end