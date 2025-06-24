theory Shaded_Region_Area_Calculation
  imports "HOL-Analysis.Analysis"
begin
definition rect_width :: real where
  "rect_width = 10.0"
definition rect_height :: real where
  "rect_height = 5.0"
definition circle_radius :: real where
  "circle_radius = rect_height / 2.0"
definition rectangle_area :: real where
  "rectangle_area = rect_width * rect_height"
definition single_circle_area :: real where
  "single_circle_area = pi * circle_radius * circle_radius"
definition two_circles_area :: real where
  "two_circles_area = 2.0 * single_circle_area"
definition shaded_area :: real where
  "shaded_area = rectangle_area - two_circles_area"
lemma shaded_area_symbolic_value:
  "shaded_area = 50.0 - 12.5 * pi"
  unfolding shaded_area_def rectangle_area_def two_circles_area_def
            single_circle_area_def circle_radius_def
            rect_width_def rect_height_def
  by simp
end