theory Shaded_Triangle_Area
  imports Main
begin
definition small_triangle_area :: real where
  "small_triangle_area = 10"
definition num_small_triangles :: nat where
  "num_small_triangles = 36"
definition total_area :: real where
  "total_area = small_triangle_area * num_small_triangles"
definition num_shaded_triangles :: nat where
  "num_shaded_triangles = 11"
definition K :: real where
  "K = small_triangle_area * num_shaded_triangles"
lemma K_value: "K = 110"
  unfolding K_def small_triangle_area_def num_shaded_triangles_def
  by simp
end