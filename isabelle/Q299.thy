theory RectangleShading
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

locale rectangle_problem =
  fixes w :: real
  assumes w_pos: "w > 0"
begin

definition l :: real where "l = 4 * w"

definition A :: "real × real" where "A = (0, w)"
definition B :: "real × real" where "B = (0, 0)"
definition C :: "real × real" where "C = (l, 0)"
definition D :: "real × real" where "D = (l, w)"
definition E :: "real × real" where "E = (l/2, 0)"

definition area_rect :: real where "area_rect = l * w"

(* Area of triangle ABE *)
definition area_white :: real where
  "area_white = (1/2) * (abs (fst A * (snd E - snd B) + 
                            fst E * (snd B - snd A) + 
                            fst B * (snd A - snd E)))"

definition area_shaded :: real where
  "area_shaded = area_rect - area_white"

lemma shaded_percentage:
  "area_shaded / area_rect = 3/4"
proof -
  have "area_rect = 4 * w * w"
    by (simp add: area_rect_def l_def)
  also have "area_white = (1/2) * (abs (0 * (0 - 0) + (l/2) * (0 - w) + 0 * (w - 0)))"
    by (simp add: area_white_def A_def B_def E_def)
  also have "... = (1/2) * (abs ((l/2) * (-w)))"
    by simp
  also have "... = (1/2) * (l/2) * w"
    by simp
  also have "... = (l * w) / 4"
    by (simp add: field_simps)
  also have "... = area_rect / 4"
    by (simp add: area_rect_def)
  
  have "area_shaded = area_rect - area_white"
    by (simp add: area_shaded_def)
  also have "... = area_rect - area_rect / 4"
    using calculation by simp
  also have "... = (3/4) * area_rect"
    by (simp add: field_simps)
  
  thus "area_shaded / area_rect = 3/4"
    by (simp add: field_simps)
qed

lemma shaded_area_value:
  "area_shaded = 3 * w * w"
proof -
  have "area_shaded = (3/4) * area_rect"
    using shaded_percentage by (simp add: field_simps)
  also have "... = (3/4) * (4 * w * w)"
    by (simp add: area_rect_def l_def)
  also have "... = 3 * w * w"
    by simp
  finally show ?thesis .
qed

end
end