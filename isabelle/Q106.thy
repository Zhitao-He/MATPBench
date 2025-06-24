theory Pyramid_Star
  imports Complex_Main
begin
definition S_side :: real where
  "S_side = 40"
definition S'_side :: real where
  "S'_side = 15"
definition S_center :: "real × real" where
  "S_center = (0, 0)"
definition S_vertices :: "(real × real) set" where
  "S_vertices = {
    (-(S_side/2), -(S_side/2)),
    (S_side/2, -(S_side/2)),
    (S_side/2, S_side/2),
    (-(S_side/2), S_side/2)
  }"
definition S'_vertices :: "(real × real) set" where
  "S'_vertices = {
    (-(S'_side/2), -(S'_side/2)),
    (S'_side/2, -(S'_side/2)),
    (S'_side/2, S'_side/2),
    (-(S'_side/2), S'_side/2)
  }"
definition S_midpoints :: "(real × real) set" where
  "S_midpoints = {
    (0, S_side/2),
    (S_side/2, 0),
    (0, -(S_side/2)),
    (-(S_side/2), 0)
  }"
definition base_area :: real where
  "base_area = S'_side * S'_side"
definition pyramid_height :: real where
  "pyramid_height = (S_side - S'_side) / 2"
definition pyramid_volume :: real where
  "pyramid_volume = (1/3) * base_area * pyramid_height"
lemma base_area_val: "base_area = 225"
  unfolding base_area_def S'_side_def by simp
lemma pyramid_height_val: "pyramid_height = 12.5"
  unfolding pyramid_height_def S_side_def S'_side_def by simp
lemma pyramid_volume_val: "pyramid_volume = 750"
  unfolding pyramid_volume_def base_area_def pyramid_height_def S'_side_def S_side_def by simp
end