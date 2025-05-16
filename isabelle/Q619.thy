theory SectorArea
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition deg2rad :: "real ⇒ real" where
  "deg2rad d = d * (pi / 180)"
definition sector_area :: "real ⇒ real ⇒ real" where
  "sector_area r θ = (θ / (2 * pi)) * (pi * r^2)"
lemma area_of_sector_BCA:
  "let r = 5;
       θ = deg2rad 46
   in sector_area r θ = (115 * pi) / 36"
proof -
  have "deg2rad 46 = 46 * (pi / 180)" by (simp add: deg2rad_def)
  also have "... = (46 * pi) / 180" by (simp add: divide_right_mono)
  also have "... = (23 * pi) / 90" by simp
  have "sector_area 5 ((23 * pi) / 90) = ((23 * pi) / 90) / (2 * pi) * (pi * 5^2)"
    by (simp add: sector_area_def)
  also have "... = ((23 * pi) / 90) / (2 * pi) * (pi * 25)"
    by simp
  also have "... = (23 / 90) * 25 * pi"
    by (simp add: field_simps)
  also have "... = (23 * 25) / 90 * pi"
    by (simp add: divide_right_mono mult.commute)
  also have "... = 575 / 90 * pi"
    by simp
  also have "... = 115 / 18 * pi"
    by simp
  also have "... = (115 * pi) / 18 * 1/2"
    by (simp add: field_simps)
  also have "... = (115 * pi) / 36"
    by (simp add: field_simps)
  finally show ?thesis by simp
qed