theory RectangleProblem
imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)² + (snd p2 - snd p1)²)"
definition is_rectangle :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_rectangle A B C D ⟷ 
   distance A B = distance D C ∧
   distance A D = distance B C ∧
   (fst A - fst B) * (fst A - fst D) + (snd A - snd B) * (snd A - snd D) = 0"
lemma rectangle_diagonals_bisect:
  assumes "is_rectangle A B C D"
  shows "let F = ((fst A + fst C) / 2, (snd A + snd C) / 2) in
         F = ((fst B + fst D) / 2, (snd B + snd D) / 2)"
  using assms unfolding is_rectangle_def
  by (auto simp add: algebra_simps)
theorem find_AF_value:
  fixes A B C D :: point
  fixes x :: real
  assumes "is_rectangle A D C B"
      and "distance A C = 9 * x - 1"
      and "A = (0, 0)"  
  defines "F ≡ ((fst A + fst C) / 2, (snd A + snd C) / 2)"
  shows "distance A F = 13"
proof -
  have "F = ((fst A + fst C) / 2, (snd A + snd C) / 2)" by (simp add: F_def)
  have "F = ((fst B + fst D) / 2, (snd B + snd D) / 2)"
    using assms(1) rectangle_diagonals_bisect by blast
  have "distance A F = 2 * x + 7" by (simp add: assms)
  have "2 * x + 7 = 13" by (simp add: assms)
  hence "x = 3" by auto
  have "9 * x - 1 = 26" using ‹x = 3› by auto
  hence "distance A C = 26" using assms(2) by auto
  thus "distance A F = 13" using ‹distance A F = 2 * x + 7› ‹x = 3› by auto
qed