theory Quarter_Circle_Area
  imports Complex_Main
begin
definition radius :: real where
  "radius = 7"
definition quarter_circle_area :: real where
  "quarter_circle_area = (1/4) * pi * radius^2"
lemma quarter_circle_area_exact:
  "quarter_circle_area = (147 * pi) / 4"
  unfolding quarter_circle_area_def radius_def
  by simp
end