theory Shaded_Figure_Area
  imports Main "HOL-Analysis.Analysis"
begin
definition rectangle_area :: "real => real => real" where
  "rectangle_area length width = length * width"
definition triangle_area :: "real => real => real" where
  "triangle_area base height = (base * height) / 2.0"
definition rect_side_a :: real where "rect_side_a = 15.0" 
definition rect_side_b :: real where "rect_side_b = 20.0" 
definition tri_base :: real where "tri_base = rect_side_a" 
definition tri_height :: real where "tri_height = 8.0"  
definition area_rectangle_component :: real where
  "area_rectangle_component = rectangle_area rect_side_a rect_side_b"
definition area_triangle_component :: real where
  "area_triangle_component = triangle_area tri_base tri_height"
definition total_shaded_area :: real where
  "total_shaded_area = area_rectangle_component + area_triangle_component"
value "total_shaded_area"
end