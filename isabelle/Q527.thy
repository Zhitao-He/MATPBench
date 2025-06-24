theory Rectangle_Sector_Area
  imports Complex_Main
begin
type_synonym point = "real × real"
definition D :: point where "D = (0, 12)"
definition C :: point where "C = (0, 0)"
definition B :: point where "B = (8, 0)"
definition H :: point where "H = (8, 12)"
definition O :: point where "O = ((0 + 8) / 2, 12) = (4, 12)"
definition area_rectangle :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_rectangle A B C D = 
    abs ((fst B - fst A) * (snd D - snd A))"
definition length_DH :: real where
  "length_DH = sqrt ((fst H - fst D)^2 + (snd H - snd D)^2)"
definition r :: real where
  "r = length_DH / 2"
definition area_sector_ODH :: real where
  "area_sector_ODH = (pi * r^2) / 2"
lemma "D = (0, 12)" by (simp add: D_def)
lemma "C = (0, 0)" by (simp add: C_def)
lemma "B = (8, 0)" by (simp add: B_def)
lemma "H = (8, 12)" by (simp add: H_def)
lemma "O = (4, 12)" by (simp add: O_def)
lemma "length_DH = 8"
  unfolding length_DH_def D_def H_def by simp
lemma "r = 4"
  unfolding r_def length_DH_def D_def H_def by simp
lemma "area_rectangle D C B H = 8 * 12"
  unfolding area_rectangle_def D_def C_def B_def H_def by simp
lemma "area_sector_ODH = (pi * 16) / 2"
  unfolding area_sector_ODH_def r_def length_DH_def D_def H_def by simp
definition result :: real where
  "result = area_rectangle D C B H - area_sector_ODH"
lemma "result = 96 - 8 * pi"
  unfolding result_def area_rectangle_def area_sector_ODH_def r_def length_DH_def
  by (simp add: D_def C_def B_def H_def)
end