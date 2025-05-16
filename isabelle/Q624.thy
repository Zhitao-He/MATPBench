theory AngleTheorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym vector2 = "real × real"
type_synonym angle = real
definition collinear :: "vector2 list ⇒ bool" where
  "collinear pts = (length pts ≥ 2 ⟶ 
    (∀i j k. i < length pts ∧ j < length pts ∧ k < length pts ∧ 
             i ≠ j ∧ j ≠ k ∧ i ≠ k ⟶ 
     (let A = pts ! i; B = pts ! j; C = pts ! k in
      ∃t. C - A = t *⋅ (B - A))))"
definition angle_between :: "vector2 ⇒ vector2 ⇒ angle" where
  "angle_between v1 v2 = 
    (if v1 = (0, 0) ∨ v2 = (0, 0) then 0
     else let 
       dot_prod = fst v1 * fst v2 + snd v1 * snd v2;
       len_v1 = sqrt((fst v1)^2 + (snd v1)^2);
       len_v2 = sqrt((fst v2)^2 + (snd v2)^2);
       cos_angle = dot_prod / (len_v1 * len_v2)
     in
       (acos cos_angle) * (180 / pi))"
definition angle :: "vector2 ⇒ vector2 ⇒ vector2 ⇒ angle" where
  "angle A C B = angle_between (A - C) (B - C)"
theorem value_of_x_angle_diagram:
  fixes A B C D :: vector2
    and x :: real
  assumes "collinear [D, C, A]"
    and "C ≠ A ∧ C ≠ D"
    and "angle D C B = 3 * x"
    and "angle B C A = 5 * x"
  shows "x = 45 / 2"
proof -
  have "∃t. D - C = t *⋅ (A - C) ∧ t ≠ 0" 
    using assms(1,2) unfolding collinear_def by (metis length_Cons list.size(3) list.size(4))
  have "angle D C B + angle B C A = 180"
    using `∃t. D - C = t *⋅ (A - C) ∧ t ≠ 0` 
    by (smt (verit) angle_def)
  have "3 * x + 5 * x = 180" using assms(3,4) by simp
  hence "8 * x = 180" by simp
  hence "x = 180 / 8" by simp
  thus "x = 45 / 2" by simp
qed