theory Shaded_Sector
  imports Complex_Main
begin
definition sector_area :: "real ⇒ real ⇒ real" where
  "sector_area r x = (x / 360) * pi * r^2"
definition circle_area :: "real ⇒ real" where
  "circle_area r = pi * r^2"
lemma shaded_sector_20_percent:
  fixes r :: real
  assumes "r > 0"
  shows "∃x. sector_area r x = 0.2 * circle_area r ∧ x = 72"
proof
  let ?x = 72
  have "sector_area r ?x = (?x / 360) * pi * r^2"
    by (simp add: sector_area_def)
  also have "... = (72 / 360) * pi * r^2"
    by simp
  also have "72 / 360 = 0.2"
    by simp
  also have "... = 0.2 * pi * r^2"
    by simp
  also have "... = 0.2 * circle_area r"
    by (simp add: circle_area_def)
  finally have "sector_area r ?x = 0.2 * circle_area r" .
  thus "sector_area r ?x = 0.2 * circle_area r ∧ ?x = 72"
    by simp
qed
end