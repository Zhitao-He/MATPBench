theory Rectangle_Shaded_Area
  imports Main
begin
locale rectangle_ABCD =
  fixes w :: real
  assumes w_pos: "w > 0"
  defines "A ≡ (0, 0)"
    and "B ≡ (0, w)"
    and "C ≡ (4*w, w)"
    and "D ≡ (4*w, 0)"
    and "E ≡ ((0 + 4*w)/2, w)"  
begin
definition area_rectangle :: real where
  "area_rectangle = 4 * w * w"
definition area_triangle_AEC :: real where
  "area_triangle_AEC = 
    (1/2) * abs (
      (fst A * (snd E - snd C) +
       fst E * (snd C - snd A) +
       fst C * (snd A - snd E))
    )"
lemma area_triangle_AEC_simp:
  "area_triangle_AEC = (1/2) * (4*w) * w * (1/2)"
proof -
  have "A = (0,0)" and "E = (2*w, w)" and "C = (4*w, w)"
    using ‹A ≡ (0, 0)› ‹E ≡ ((0 + 4*w)/2, w)› ‹C ≡ (4*w, w)› by auto
  then have "area_triangle_AEC = (1/2) * abs (
      0 * (w - w) +
      2*w * (w - 0) +
      4*w * (0 - w)
    )"
    unfolding area_triangle_AEC_def by simp
  also have "... = (1/2) * abs (
      0 +
      2*w * w +
      4*w * (-w)
    )"
    by simp
  also have "... = (1/2) * abs (
      2*w^2 - 4*w^2
    )"
    by simp
  also have "... = (1/2) * abs (-2*w^2)"
    by simp
  also have "... = (1/2) * 2*w^2"
    using w_pos by simp
  also have "... = w^2"
    by simp
  finally show ?thesis
    by simp
qed
definition shaded_percent :: real where
  "shaded_percent = 100 * (area_rectangle - area_triangle_AEC) / area_rectangle"
lemma shaded_percent_75:
  "shaded_percent = 75"
proof -
  have "area_rectangle = 4*w*w"
    unfolding area_rectangle_def by simp
  have "area_triangle_AEC = w^2"
    using area_triangle_AEC_simp by simp
  then have "area_rectangle - area_triangle_AEC = 4*w*w - w^2"
    by simp
  then have "shaded_percent = 100 * (4*w*w - w^2) / (4*w*w)"
    unfolding shaded_percent_def area_rectangle_def by simp
  also have "... = 100 * (4 - 1) / 4"
    using w_pos by (simp add: power2_eq_square)
  also have "... = 100 * 3 / 4"
    by simp
  also have "... = 75"
    by simp
  finally show ?thesis .
qed
end
end