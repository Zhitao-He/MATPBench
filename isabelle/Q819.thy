theory Similar_Triangle_Perimeter
  imports Main
begin
locale triangle_sides =
  fixes AB :: real and AC :: real and BC :: real
  assumes AB_pos: "AB > 0"
      and AC_pos: "AC > 0"
      and BC_pos: "BC > 0"
locale triangles =
  fixes AB AC BC DE EF DF :: real
  assumes AB_def: "AB = 5"
      and AC_def: "AC = 7"
      and BC_def: "BC = 6"
      and DE_def: "DE = 3"
      and AB_pos: "AB > 0"
      and AC_pos: "AC > 0"
      and BC_pos: "BC > 0"
      and DE_pos: "DE > 0"
      and EF_pos: "EF > 0"
      and DF_pos: "DF > 0"
definition similar_triangles :: "real ⇒ real ⇒ real ⇒ real ⇒ real ⇒ real ⇒ bool" where
  "similar_triangles AB AC BC DE DF EF ⟷ 
    (AB / DE = AC / DF ∧ AB / DE = BC / EF)"
definition triangle_perimeter :: "real ⇒ real ⇒ real ⇒ real" where
  "triangle_perimeter a b c = a + b + c"
locale problem_setup =
  triangles AB AC BC DE EF DF +
  assumes sim: "similar_triangles AB AC BC DE DF EF"
lemma perimeter_DEF:
  fixes AB AC BC DE EF DF :: real
  assumes "AB = 5" "AC = 7" "BC = 6" "DE = 3"
  and "similar_triangles AB AC BC DE DF EF"
  shows "triangle_perimeter DE DF EF = 54 / 5"
proof -
  from assms have "AB / DE = 5 / 3" by simp
  from assms(5) have "AB / DE = AC / DF" and "AB / DE = BC / EF"
    unfolding similar_triangles_def by auto
  hence "AC / DF = 5 / 3" and "BC / EF = 5 / 3" using ‹AB / DE = 5 / 3› by auto
  hence "DF = (3 / 5) * AC" and "EF = (3 / 5) * BC"
    using assms(2,3) by (auto simp: field_simps)
  hence "DF = (3 / 5) * 7" and "EF = (3 / 5) * 6" using assms(2,3) by auto
  hence "DF = 21 / 5" and "EF = 18 / 5" by simp_all
  have "triangle_perimeter DE DF EF = DE + DF + EF"
    by (simp add: triangle_perimeter_def)
  also have "... = 3 + 21 / 5 + 18 / 5" using ‹DF = 21 / 5› ‹EF = 18 / 5› assms(4) by simp
  also have "... = 3 + (21 + 18) / 5" by simp
  also have "... = 3 + 39 / 5" by simp
  also have "... = (15 / 5) + (39 / 5)" by simp
  also have "... = 54 / 5" by simp
  finally show ?thesis .
qed
end